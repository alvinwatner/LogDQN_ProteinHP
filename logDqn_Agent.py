"""
----------------------------------------
Author  : Alvin Watner
Email   : alvin2phantomhive@gmail.com
Website : -
License : MIT
-----------------------------------------
**Please feel free to use and modify this, but keep the above information. Thanks!**

"""

from settings import settings
from Network_ import  Nnet

import tensorflow as tf 
import numpy as np
import random
from statistics import mean

settings_ = settings()


class Agent():
	def __init__(self,  action_Space, num_states,
						maxReplay_Buffer 		= settings_.settings['maxReplay_Buffer'],
						minReplay_Buffer 		= settings_.settings['minReplay_Buffer'],
						miniBatch_Size 			= settings_.settings['miniBatch_Size'],
						update_TargetPeriod		= settings_.settings['update_TargetPeriod'],
						model_Save_MinReward 	= settings_.settings['model_Save_MinReward'],
						#Exploration and Exploitation Settings
						#Decay epsilon each step
						epsilon_Decay 			= settings_.settings['epsilon_Decay'],
						#Bound the epsilon decay value to 'min_epsilon'
						min_epsilon 			= settings_.settings['min_Epsilon'],
						gamma 					= settings_.settings['gamma'],
						c 						= settings_.settings['c'],
						k 						= settings_.settings['k'],
						pos_q_init				= settings_.settings['pos_q_init'],
						neg_q_init 				= settings_.settings['neg_q_init'],
						lr 						= settings_.settings['lr'],
						alpha 					= settings_.settings['alpha'],
						optimizer 				= settings_.settings['optimizer'],

						update_horizon = 1):

		self.action_Space = action_Space
		self.num_actions = len(action_Space)

		self.np_float = np.float64
		self.tf_float = tf.float64    	

		self.maxReplay_Buffer 		= maxReplay_Buffer
		self.minReplay_Buffer 		= minReplay_Buffer
		self.miniBatch_Size 		= miniBatch_Size
		self.update_TargetPeriod	= update_TargetPeriod
		self.model_Save_MinReward 	= model_Save_MinReward

		#Decay epsilon each step
		self.epsilon_Decay 	= epsilon_Decay
		#Bound the epsilon decay value to 'min_epsilon'
		self.min_epsilon 	= min_epsilon

		self.lr 		= lr
		self.alpha 		= alpha
		self.beta_reg	= alpha / lr

		self.gamma 		= self.np_float(gamma)
		self.c 			= self.np_float(c)
		self.k 			= self.np_float(k)
		self.pos_q_init = np.amax([gamma**k, self.np_float(pos_q_init)])
		self.neg_q_init = np.amax([gamma**k, self.np_float(neg_q_init)])
		self.pos_Delta = -self.c * np.log(np.amax([gamma**k, self.pos_q_init]))
		self.neg_Delta = -self.c * np.log(np.amax([gamma**k, self.neg_q_init]))
		
		self.clip_qt_max = True

		self.train_Model = Nnet(num_states)
		self.target_Model = Nnet(num_states)

		self.replay_buffer = {'s': [], 'a': [], 'r': [], 's2': [], 'done': []}

		if optimizer == 'Adam':
			self.optimizer = tf.optimizers.Adam(lr)
		else:
			self.optimizer = tf.keras.optimizers.RMSprop(lr)

	def _build_target_q_ops(self, sList, s2List, rewardList, actionList, terminal_stateList):
		pos_log_td_targets = []
		neg_log_td_targets = []

		for s, s2, reward, action, terminal_state in zip(sList, s2List, rewardList, actionList, terminal_stateList):
			pos_log_td_target, neg_log_td_target = self._build_target_q_op(s, s2, reward, action, terminal_state)
			pos_log_td_targets.append(pos_log_td_target)
			neg_log_td_targets.append(neg_log_td_target)

		return np.asarray(pos_log_td_targets), np.asarray(neg_log_td_targets)


	def _build_target_q_op(self, s, s2, reward, action, terminal_state):
		#return log_td_target, neg_log_td_target
		#Calling predict function return a named tuple, which consist logPosq,logNegq, regPosq, regNegq, q_values
		_replay_next_target_net_outputs = self.target_Model.LogDqnPredict(s2, c = self.c, pos_Delta = self.pos_Delta, neg_Delta = self.neg_Delta)

		# Gets greedy actions over the aggregated target-network's Q-values for the
		# replay's next states, used for retrieving the target Q-values for both heads.
		_replay_next_target_net_q_argmax = tf.argmax(_replay_next_target_net_outputs.q_values, axis = 1)

		one = tf.constant(1, dtype = self.tf_float)
		zero = tf.constant(0, dtype= self.tf_float)

		# One-hot encode the greedy actions over the target-network's aggregated
		# Q-values for the replay's next states.
		replay_next_target_net_q_argmax_one_hot = tf.one_hot(_replay_next_target_net_q_argmax, self.num_actions, one, zero)    

		# Calculate each head's target Q-value (in standard space) with the 
		# action that maximizes the target-network's aggregated Q-values for 
		# the replay's next states.
		pos_replay_next_qt_max_unclipped = tf.reduce_sum(
		 _replay_next_target_net_outputs.pos_q_values  * replay_next_target_net_q_argmax_one_hot, axis = 1)

		neg_replay_next_qt_max_unclipped = tf.reduce_sum(
		  _replay_next_target_net_outputs.neg_q_values * replay_next_target_net_q_argmax_one_hot, axis = 1)

		# Clips the maximum target-network's positive and negative Q-values 
		# for the replay's next states.
		if self.clip_qt_max:
			min_return = zero
			max_return = one / (one - self.gamma)

			pos_replay_next_qt_max_clipped_min = tf.maximum(min_return, pos_replay_next_qt_max_unclipped)

			pos_replay_next_qt_max = tf.minimum(max_return, pos_replay_next_qt_max_clipped_min)

			neg_replay_next_qt_max_clipped_min = tf.maximum(min_return, neg_replay_next_qt_max_unclipped)
			neg_replay_next_qt_max = tf.minimum(max_return, neg_replay_next_qt_max_clipped_min)
		else:
			pos_replay_next_qt_max = pos_replay_next_qt_max_unclipped
			neg_replay_next_qt_max = neg_replay_next_qt_max_unclipped

		# Terminal state masking.
		pos_replay_next_qt_max_masked = pos_replay_next_qt_max * (1. - tf.cast(terminal_state, self.tf_float))
		neg_replay_next_qt_max_masked = neg_replay_next_qt_max * (1. - tf.cast(terminal_state, self.tf_float))    

		# Creates the positive and negative head's separate reward signals
		# and bootstraps from the appropriate target for each head.
		# Positive head's reward signal is r if r > 0 and 0 otherwise.
		pos_standard_td_target_unclipped = reward * tf.cast(tf.greater(reward, zero), self.tf_float) + \
										 self.gamma * pos_replay_next_qt_max_masked
		# Negative head's reward signal is -r if r < 0 and 0 otherwise.
		neg_standard_td_target_unclipped = -1 * reward * tf.cast(tf.less(reward, zero), self.tf_float) + \
										self.gamma * neg_replay_next_qt_max_masked  

		# Clips the minimum TD-targets in the standard space for both positive 
		# and negative heads so as to avoid log(x <= 0).
		pos_standard_td_target = tf.maximum(self.gamma**self.k, pos_standard_td_target_unclipped) 
		neg_standard_td_target = tf.maximum(self.gamma**self.k, neg_standard_td_target_unclipped)  

		# self._replay_net_outputs: The replayed states' Q-values.
		_replay_net_outputs = self.train_Model.LogDqnPredict(s, c = self.c, pos_Delta = self.pos_Delta, neg_Delta = self.neg_Delta)

		# Gets the current-network's positive and negative Q-values (in standard 
		# space) for the replay's chosen actions.
		replay_action_one_hot = tf.one_hot(action, self.num_actions, one, zero)
		pos_replay_chosen_q = tf.reduce_sum(
			_replay_net_outputs.pos_q_values * replay_action_one_hot, axis=1)
		neg_replay_chosen_q = tf.reduce_sum(
			_replay_net_outputs.neg_q_values * replay_action_one_hot, axis=1) 

		# Averaging samples in the standard space.
		pos_UT_new = pos_replay_chosen_q + self.beta_reg * (pos_standard_td_target - pos_replay_chosen_q)
		neg_UT_new = neg_replay_chosen_q + self.beta_reg * (neg_standard_td_target - neg_replay_chosen_q)

		# Forward mapping.
		pos_log_td_target = self.c * tf.math.log(pos_UT_new) + self.pos_Delta
		neg_log_td_target = self.c * tf.math.log(neg_UT_new) + self.neg_Delta    

		pos_log_td_target = tf.cast(pos_log_td_target, tf.float32)

		neg_log_td_target = tf.cast(neg_log_td_target, tf.float32)

		return pos_log_td_target, neg_log_td_target

	def preprocess_Terminal(self, dones):
		terminal_stateList = []
		for done in dones:
			if done:
				terminal_state = 1
			else:
				terminal_state = 0
			
			terminal_stateList.append(terminal_state)

		return np.asarray(terminal_stateList)		

	def train(self):
		if len(self.replay_buffer['s']) < self.minReplay_Buffer:
			return 0

		ids = np.random.randint(low=0, high=len(self.replay_buffer['s']), size = self.miniBatch_Size)
		sList = np.asarray([self.replay_buffer['s'][i] for i in ids])
		actionList = np.asarray([self.replay_buffer['a'][i] for i in ids])
		rewardList = np.asarray([self.replay_buffer['r'][i] for i in ids])
		s2List = np.asarray([self.replay_buffer['s2'][i] for i in ids])
		dones = np.asarray([self.replay_buffer['done'][i] for i in ids])
		terminal_stateList = self.preprocess_Terminal(dones)

		pos_log_td_targets, neg_log_td_targets = self._build_target_q_ops(sList, s2List, rewardList, actionList, terminal_stateList)
		pos_log_td_targets = tf.reshape(pos_log_td_targets, [-1])
		neg_log_td_targets = tf.reshape(neg_log_td_targets, [-1])
		pos_log_targets = tf.stop_gradient(pos_log_td_targets)
		neg_log_targets = tf.stop_gradient(neg_log_td_targets)

		one = tf.constant(1, dtype=self.tf_float)
		zero = tf.constant(0, dtype=self.tf_float)

		with tf.GradientTape() as tape:        
			_replay_net_outputs = self.train_Model.Net(sList)

			pos_q_tilde_values = tf.cast(_replay_net_outputs[0], self.tf_float)
			neg_q_tilde_values = tf.cast(_replay_net_outputs[1], self.tf_float)
			  
			pos_replay_chosen_q_tildes = tf.math.reduce_sum(pos_q_tilde_values * tf.one_hot(actionList, self.num_actions, one, zero), axis=1)
			neg_replay_chosen_q_tildes = tf.math.reduce_sum(neg_q_tilde_values * tf.one_hot(actionList, self.num_actions, one, zero), axis=1)
			pos_replay_chosen_q_tildes = tf.cast(pos_replay_chosen_q_tildes, tf.float32)
			neg_replay_chosen_q_tildes = tf.cast(neg_replay_chosen_q_tildes, tf.float32)  
			            
			pos_loss = tf.math.reduce_mean(tf.square(pos_log_targets - pos_replay_chosen_q_tildes))
			neg_loss = tf.math.reduce_mean(tf.square(neg_log_targets - neg_replay_chosen_q_tildes))
			loss = pos_loss + neg_loss

		variables = self.train_Model.Net.trainable_variables
		gradients = tape.gradient(loss, variables)
		self.optimizer.apply_gradients(zip(gradients, variables))

		return loss

	def add_experience(self, exp):    
		if len(self.replay_buffer['s']) >= self.maxReplay_Buffer:
			for key in self.replay_buffer.keys():
				self.replay_buffer[key].pop(0)
		for key, value in exp.items():
			self.replay_buffer[key].append(value)

	def get_action(self, states, in_epsilon = 0, train = True):
		if train == True:
			if np.random.random() < in_epsilon:
				return random.choice(self.action_Space)
			else:
				q_values = self.train_Model.LogDqnPredict(states, c = self.c, pos_Delta = self.pos_Delta, neg_Delta = self.neg_Delta).q_values[0]
				return np.argmax(q_values) + 1
		else:
			q_values = self.train_Model.LogDqnPredict(states, c = self.c, pos_Delta = self.pos_Delta, neg_Delta = self.neg_Delta).q_values[0]
			return np.argmax(q_values) + 1        

	def run_SinglePass(self, env, episode = None, amino_data = None, epsilon = None):
		rewards = 0  
		done = False
		observations = env.reset(amino_storage = amino_data)
		losses = list()
		while not done:
			action = self.get_action(observations, in_epsilon = epsilon , train = True)
			prev_observations = observations
			chosen_action, observations, reward, done, info = env.step(action)
			rewards += reward
			if info['trap']:
				reward = -1
				print(f"amino trapped at episode - {episode}")

			exp = {'s': prev_observations, 'a': chosen_action - 1, 'r': reward, 's2': observations, 'done': done}
			self.add_experience(exp)
			self.train()
		
			loss = self.train()
			if isinstance(loss, int):
				losses.append(loss)
			else:
				losses.append(loss.numpy())

		if not episode % self.update_TargetPeriod:
			self.target_Model.copy_Weights(source_model = self.train_Model.Net)						

		Total_Energy = info['total_Energy']

		return rewards, Total_Energy, mean(losses)		

	def save_Model(self, model_dir, model_name, avg_rwd):
		print(f"************************************************")
		print(f"************************************************")			
		print(f"**********SAVE MODEL***********")
		print(f"************************************************")
		print(f"************************************************")  
		self.train_Model.Net.save(model_dir + "--" + model_name + "--" + "avg_rwd" + str(avg_rwd))		
		

if __name__ == "__main__":
	from environment import HP_Environment_V2
	env = HP_Environment_V2()
	amino_data = ['H','H','H','H']
	cs = env.reset(amino_storage = amino_data)


	num_states = len(cs)
	agent = Agent(env.action_Space, num_states)
	episodes = 50
	epsilon = 1
	decay = 0.9998
	min_epsilon = 0.01

	for episode in range(episodes):
		epsilon = max(min_epsilon, epsilon * decay)
		agent.run_SinglePass(env, episode = episode, amino_data = amino_data, epsilon = epsilon)


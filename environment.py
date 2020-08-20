"""
----------------------------------------
Author  : Alvin Watner
Email   : alvin2phantomhive@gmail.com
Website : -
License : MIT
-----------------------------------------
**Please feel free to use and modify this, but keep the above information. Thanks!**

"""

from simulation import HP_simulation

import numpy as np 
import random
import copy

class HP_Environment_V2:
	def __init__(self):
		self.action_Space = [1, 2, 3, 4] 
		self.action_Size = 4
		self.isReset = False

	'''
	Preprocess Amino From String to Int
	'''
	def data_preprocess(self, amino_input):
		for i in range(len(amino_input)):
			if amino_input[i] == 'H':
				amino_input[i] = 1
			else:
				amino_input[i] = 2

		return np.array(amino_input)

	"""
	Create 2D Lattice with size for each dim = (Amino Length * 2 + 3). 
	Amino Length Multiplied by 2 since the worst case is the amino sequence may go straight horizontal or vertical.
	Added by 3, NO specific reason. Just increase the size a bit, otherwise there are cases where it will result index out of bound.
	"""
	def create_Lattice(self, amino_length):
		lattice = np.zeros((amino_length * 2 + 3, amino_length * 2 + 3))
		
		return lattice

	"""
	Codes below used to generate future available(valid) action and free energy.

		Parameter  : 
		- done   = Bool
		- action = Int, action from action_space [0, 1, 2, 3] 
		Return     : 
		-available_action = List, Consist valid future action.
		-free energy = Int, 1 if found H-H pairs and 0 otherwise. (Note : The original H-H pairs supposed to return -1 free energy, u might confuse why it set to 1, no worry it works rn, 
																		  fix that soon).

	"""
	def check_Future(self, done, action):
		#Create a copy of future coordinate from current coordinate.
		y_UP = copy.deepcopy(self.y_axis - 1)
		y_DOWN = copy.deepcopy(self.y_axis + 1)

		x_LEFT = copy.deepcopy(self.x_axis - 1)
		x_RIGHT = copy.deepcopy(self.x_axis + 1)

		#Generate temporary future available action
		if action == 1: #Going Up
			temp_Action = [1, 2, 3]
			cur_x = self.x_axis
			cur_y = y_UP
		elif action == 2: #Going Left 
			temp_Action = [1, 2, 4]
			cur_x = x_LEFT
			cur_y = self.y_axis
		elif action == 3: #Going Right
			temp_Action = [1, 3, 4]
			cur_x = x_RIGHT
			cur_y = self.y_axis
		elif action == 4: #Going Down
			temp_Action = [2, 3, 4]
			cur_x = self.x_axis
			cur_y = y_DOWN
		else:
			raise Exception("Cannot generate invalid action!")

		available_action = [] #initialize empty array.
		free_Energy = 0 #initialize free energy to 0.

		#iterate over the previous temporary available action and check if the future from the future might lead to : 1. Collision 2. Trapped 3. H - H pairs of Free Energy.
		for i in range(len(temp_Action)):
			if temp_Action[i] == 1:
				isAmino, trapped, Energy = self.check_Neighbour(done, y_axis = y_UP, x_axis = self.x_axis)
			
			elif temp_Action[i] == 2:
				isAmino, trapped, Energy = self.check_Neighbour(done, y_axis = self.y_axis, x_axis = x_LEFT)			
			
			elif temp_Action[i] == 3:
				isAmino, trapped, Energy = self.check_Neighbour(done, y_axis = self.y_axis, x_axis = x_RIGHT)
			
			elif temp_Action[i] == 4:
				isAmino, trapped, Energy = self.check_Neighbour(done, y_axis = y_DOWN, x_axis = self.x_axis)

			free_Energy += Energy #sum up the free energy

			if not isAmino: #if the future not collide, then
				if not trapped: #it also not trapped
					available_action.append(temp_Action[i]) #congratulation, u were approved to be the future valid action for the agent later on.

		return available_action, free_Energy 

	"""
	Codes below used to check the amino neighbour information, such as other amino occupied to the corresponding coordinate, or free energy, or trapped condition.

		Parameter  : 
		- done   = Bool
		- y_axis = Int, Value must in the range of the lattice size
		- x_axis = Int, Value must in the range of the lattice size
		Return     : 
		-available_action = List, Consist valid future action.
		-free energy = Int, 1 if found H-H pairs and 0 otherwise. (Note : The original H-H pairs supposed to return -1 free energy, u might confuse why it set to 1, no worry it works rn, 
																		  fix that soon).

	"""
	def check_Neighbour(self,done, y_axis = None, x_axis = None): 

		if y_axis == None or x_axis == None:
			raise Exception("Please specify y_axis or x_axis!")
		else:
			y_UP = copy.deepcopy(y_axis - 1)
			y_DOWN = copy.deepcopy(y_axis + 1)

			x_LEFT = copy.deepcopy(x_axis - 1)
			x_RIGHT = copy.deepcopy(x_axis + 1)		
				
			Energy = 0

			if self.lattice[(y_axis, x_axis)] == 1: #if given coordinate neighbour is hydrophobic amino acid (1), then isAmino = True
				isTrap = False
				isAmino = True
				if self.lattice[(self.y_axis, self.x_axis)] == 1: #if current coordinate is also hydrophobic amino acid, then Free Energy = 1.
					Energy = 1
			elif self.lattice[(y_axis, x_axis)] == 2: #if given coordinate neighbour is hydrophillic amino acid (2), then isAmino = True
				isTrap = False
				isAmino = True
			else:
				if len(self.amino_data) > 1: #if there are still many amino_data in storage. Well.. make sure u still got a place, otherwise "TRAP = TRUEE lol"
					occupied_Num = 0
					if self.lattice[(y_UP, x_axis)] == 1 or self.lattice[(y_UP, x_axis)] == 2:
						occupied_Num +=1
					if self.lattice[(y_DOWN, x_axis)] == 1 or self.lattice[(y_DOWN, x_axis)] == 2:
						occupied_Num += 1
					if self.lattice[(y_axis, x_LEFT)] == 1 or self.lattice[(y_axis, x_LEFT)] == 2:
						occupied_Num += 1
					if self.lattice[(y_axis, x_RIGHT)] == 1 or self.lattice[(y_axis, x_RIGHT)] == 2:
						occupied_Num += 1

					if occupied_Num > 3: #i'm sorry, but u are officially TRaPed! LOL XD

						isAmino = False
						isTrap = True
					else: #yea good on you, keep goin and best luck.
						isAmino = False
						isTrap = False

				else: #yea keep goin 
					isTrap = False
					isAmino = False

		return isAmino, isTrap, Energy		


	"""
	Codes below used to updated the lattice information after taking an action. 

		Parameter  : 
		- action = Int, action from action_space [0, 1, 2, 3] 
		Return     : 
		-lattice = Numpy Array. yep thats it, numpy array..
		
	"""	
	def update_lattice(self, action):
		#Go up
		if action == 1:
			self.y_axis -= 1
			self.lattice[(self.y_axis, self.x_axis)] = self.amino_data[0]
		#Go Left
		elif action == 2:
			self.x_axis -= 1
			self.lattice[(self.y_axis, self.x_axis)] = self.amino_data[0]
		#Go Right
		elif action == 3:
			self.x_axis += 1
			self.lattice[(self.y_axis, self.x_axis)] = self.amino_data[0]
		#Go Down
		elif action == 4:
			self.y_axis += 1
			self.lattice[(self.y_axis, self.x_axis)] = self.amino_data[0]		

		return self.lattice		

	"""
	Codes below used to create observation space or State(St) whatever you named it. The idea is, this stuff indicate the current agent state, like whats going on rn. hmmm....

		Parameter  : 
		- action = Int, action from action_space [0, 1, 2, 3] 
		Return     : 
		-lattice = Numpy Array. yep thats it, numpy array..
		
	"""	
	def create_observation(self):
		observation = np.zeros((self.max_Amino * 2) - 1)

		init_step = 0
		for i in range(len(self.amino_data)):			
			if i == 0:
				observation[init_step] = self.amino_data[i]
			else:
				init_step += 2
				observation[init_step] = self.amino_data[i]

		return observation

	"""
	Codes below used to updated the lattice information after taking an action. 

		Parameter  : 
		- action = Int, action from action_space [0, 1, 2, 3] 
		Return     : 
		-lattice = Numpy Array. yep thats it, numpy array..
		
	"""	

	'''
	Reward Function = {Total Free Energy, -5 if trapped}
	'''
	def reward_Func(self, trap = False):
		if trap:
			reward = -5
		else:
			reward = self.total_Energy

		return reward

	'''
	reset the env
	'''
	def reset(self, amino_storage = None): 
		if amino_storage == None:
			raise Exception("Please specify amino_storage!, eg. reset(amino_storage = ['H','P'])")
		else:
			for i in range(len(amino_storage)):
				if amino_storage[i] != 'H' and amino_storage[i] != 'P':
					raise Exception("Not recognize amino_storage! Please type amino_storage in this manner, ['H','P',...'H'/'P']")
			
		self.init_Amino = True
		self.isReset = True
		self.trap = False
		amino_Storage = copy.deepcopy(amino_storage)
		self.amino_data = self.data_preprocess(amino_Storage)
		self.max_Amino = len(self.amino_data)
		self.steps = 1
		self.total_Energy = 0
		amino_length = len(self.amino_data)
		self.lattice = self.create_Lattice(amino_length)

		origin = amino_length + 1

		self.y_axis = origin 
		self.x_axis = origin
		self.lattice[(self.y_axis, self.x_axis)] = self.amino_data[0]

		self.observation = self.create_observation()
		self.amino_data = np.delete(self.amino_data, 0)

		current_state = copy.deepcopy(self.observation.tolist())

		return current_state

	'''
	Take an action
	'''
	def step(self, action):

		if not self.isReset:
			raise Exception("Cannot call env.step() before calling reset()")
		if action > 4 or action < 1:
			raise Exception("Action must in the range of 1 to 4 -> [1 or 2 or 3 or 4]!")
		else:
			if self.init_Amino:
				done = False
				self.available_action, free_Energy = self.check_Future(done, action)
				self.steps = 1
				self.observation[self.steps] = action + 2
				self.steps += 2
				self.init_Amino = False
				self.update_lattice(action)
				self.amino_data = np.delete(self.amino_data, 0)
				chosen_Action = action
			else:
				if len(self.amino_data) == 0:
					new_state = self.observation
					reward = 0
					done = True
					info = {'observation': self.observation, 'free_Energy' : 0, 'total_Energy': 0, 'trap': 0, 'lattice': self.lattice}	
					return 1 , new_state, reward, done, info
				else:
					if len(self.amino_data) == 1:
						done = True
					else:
						done = False

					approve_Action = action in self.available_action

					if approve_Action == True:
						chosen_Action = action
					else:
						chosen_Action = random.choice(self.available_action)

					self.update_lattice(chosen_Action)
					self.amino_data = np.delete(self.amino_data, 0)				

					self.available_action, free_Energy = self.check_Future(done, chosen_Action)


					if len(self.available_action) == 0 and len(self.amino_data) > 1:
						self.trap = True
						self.observation[self.steps] = chosen_Action + 2
						self.steps += 2
						reward = self.reward_Func(trap = True)
						done = True
						info = {'observation': self.observation, 'free_Energy' : free_Energy, 'total_Energy': self.total_Energy, 'trap': self.trap, 'lattice': self.lattice}	
						self.amino_data = np.array([])
						new_state = copy.deepcopy(self.observation.tolist())
						return chosen_Action, new_state, reward, done, info
					else:
						self.observation[self.steps] = chosen_Action + 2
						self.steps += 2

			self.total_Energy += free_Energy
			reward = self.reward_Func()
			info = {'observation': self.observation, 'free_Energy' : free_Energy, 'total_Energy': self.total_Energy, 'trap': self.trap, 'lattice': self.lattice}	
			new_state = copy.deepcopy(self.observation.tolist())
				
			return chosen_Action, new_state, reward, done, info

	def render(self, plot = False):
		"""
		Parameter : Bool, if 'plot = False' use to show the folding process, and show the matplotlib figure subsequently
						  if 'plot = True' then show only the matplotlib figure

		"""		
		render_Memory = {'action_Memory' : [] , 'amino_Info' : []}
		obs = copy.deepcopy(self.observation.tolist())
		for i in range(len(obs)):
			if i % 2:
				if obs[i] != 0:
					render_Memory['action_Memory'].append(obs[i] - 3)
			else:
				if obs[i] == 1.0:
					render_Memory['amino_Info'].append('H')
				else:
					render_Memory['amino_Info'].append('P')

		sim = HP_simulation()
		sim.reset(render_Memory['amino_Info'])

		for action in render_Memory['action_Memory']:
			new_state, reward, done = sim.step(action)

		sim.render(plot = plot)		

"""
----------------------------------------
Author  : Alvin Watner
Email   : alvin2phantomhive@gmail.com
Website : -
License : MIT
-----------------------------------------
**Please feel free to use and modify this, but keep the above information. Thanks!**

"""
import tensorflow as tf 
import numpy as np
from tensorflow.keras.layers import Dense, Input
from tensorflow.keras.models import Model
from environment import HP_Environment_V2

import collections


env = HP_Environment_V2()

class Nnet():
  def __init__(self, num_states, net_Type = 'LogDQN'):
    self.num_actions = len(env.action_Space)
    if net_Type == 'LogDQN':
      self.Net = self.create_LogDQNNet(num_states, self.num_actions)
    else:
      self.Net = self.create_DQNNet(num_states, self.num_actions)

  def create_LogDQNNet(self, num_states, num_actions):

    initializer = tf.initializers.GlorotNormal()
    inputs = Input(shape=(num_states,), name="Input")  
    net = Dense(200, activation='relu', name = 'Hidden_1', kernel_initializer=initializer)(inputs)
    net = Dense(200, activation='relu', name = 'Hidden_2', kernel_initializer=initializer)(net)

    pos_q_tilde_values = Dense(num_actions, activation='linear', name = 'PosQ_Output', kernel_initializer=initializer)(net)  
    neg_q_tilde_values = Dense(num_actions, activation='linear', kernel_initializer = tf.zeros_initializer(), name = 'NegQ_Output')(net)  

    model = Model(
      inputs=inputs,
      outputs = [pos_q_tilde_values, neg_q_tilde_values], 
      name = 'LogDQNnet')

    return model

  def create_DQNNet(self, num_states, num_actions):
    initializer = tf.initializers.GlorotNormal()
    inputs = Input(shape=(num_states,), name="Input")  
    net = Dense(200, activation='relu', name = 'Hidden_1', kernel_initializer=initializer)(inputs)
    net = Dense(200, activation='relu', name = 'Hidden_2', kernel_initializer=initializer)(net)
    q_values = Dense(num_actions, activation='linear', name = 'q_values', kernel_initializer=initializer)(net)    

    model = Model(
      inputs=inputs,
      outputs = q_values, 
      name = 'DQNnet')

    return model 

  def copy_Weights(self, source_model = None):
    if (source_model == None):
      print("Copy Weigths Failed! Please specify 'source_model'")
    else:
      variables1 = source_model.trainable_variables
      variables2 = self.Net.trainable_variables

      for v_source, v_target in zip(variables1, variables2):
        v_target.assign(v_source.numpy())

  def _get_network_type(self):
    return collections.namedtuple('LogDQN_network', ['q_values',
      'pos_q_tilde_values', 'neg_q_tilde_values', 
      'pos_q_values', 'neg_q_values'])           

  def LogDqnPredict(self, inputs, c = None, pos_Delta = None, neg_Delta = None):    
    output = self.Net(np.atleast_2d(inputs))
    # Output two head Pos and Neg Q in logarithmic space
    pos_q_tilde_values = tf.cast(output[0], tf.float64)
    neg_q_tilde_values = tf.cast(output[1], tf.float64)

    # Inverse mapping of Q-tilde values.
    pos_q_values = tf.exp((pos_q_tilde_values - pos_Delta) / c)
    neg_q_values = tf.exp((neg_q_tilde_values - neg_Delta) / c)
    q_values = pos_q_values - neg_q_values

    return self._get_network_type()(q_values, pos_q_tilde_values, 
    neg_q_tilde_values, pos_q_values, neg_q_values)   

  def DqnPredict(self):
    pass









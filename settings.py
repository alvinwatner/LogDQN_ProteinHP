"""
----------------------------------------
Author  : Alvin Watner
Email   : alvin2phantomhive@gmail.com
Website : -
License : MIT
-----------------------------------------
**Please feel free to use and modify this, but keep the above information. Thanks!**

"""
import numpy as np 

class settings():
	def __init__(self):

		self.settings = {}
		self.settings['model_Name'] = "LogDQN-Agent"
		self.settings['optimizer'] = 'Adam'

		self.settings['lr'] = 0.0025
		self.settings['gamma'] = 0.8
		self.settings['pos_q_init'] = 1.0
		self.settings['neg_q_init'] = 0.0
		self.settings['c'] = 0.5
		self.settings['k'] = 100	
		self.settings['alpha'] = 0.00025
		self.settings['update_horizon'] = 1
		
		self.settings['episodes'] = 6_000
		self.settings['maxReplay_Buffer'] = 10_000
		self.settings['minReplay_Buffer'] = 100
		self.settings['miniBatch_Size'] = 34

		self.settings['update_TargetPeriod'] = 5
		self.settings['model_Save_MinReward'] = -200

		#Exploration and Exploitation Settings
		self.settings['epsilon'] = 1 
		#Decay epsilon each step
		self.settings['epsilon_Decay'] = 0.999
		#Bound the epsilon decay value to 'min_epsilon'
		self.settings['min_Epsilon'] = 0.001

		self.settings['amino_container'] = []








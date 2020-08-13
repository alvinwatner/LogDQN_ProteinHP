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
from settings import settings
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtGui import QIcon, QPixmap
from PyQt5.QtWidgets import QMessageBox, QApplication, QMainWindow, QLabel, QVBoxLayout, QTableWidget, QTableWidgetItem, QWidget
import random
import numpy as np 
import sys
from environment import HP_Environment_V2
import datetime
import time

empty = ""

class Ui_GUI(QMainWindow):
	def __init__(self):
		super(QMainWindow, self).__init__()
		self.generate_random = None
		self.setupUi()
		self.inp = settings()
		self.env = HP_Environment_V2()
		self.model = None

	def setupUi(self):
		self.setObjectName("GUI")
		self.resize(478, 372)
		font = QtGui.QFont()
		font.setPointSize(10)
		self.setFont(font)
		self.setToolButtonStyle(QtCore.Qt.ToolButtonTextOnly)
		self.setAnimated(True)
		self.centralwidget = QtWidgets.QWidget(self)
		self.centralwidget.setObjectName("centralwidget")

		self.lbl_input = QtWidgets.QLabel(self.centralwidget)
		self.lbl_input.setGeometry(QtCore.QRect(20, 12, 211, 21))
		font = QtGui.QFont()
		font.setFamily("Cooper Std Black")
		font.setPointSize(10)
		font.setBold(True)
		font.setWeight(75)
		self.lbl_input.setFont(font)
		self.lbl_input.setObjectName("lbl_input")

		self.btn_input_h = QtWidgets.QPushButton(self.centralwidget)
		self.btn_input_h.setGeometry(QtCore.QRect(250, 10, 91, 31))
		font = QtGui.QFont()
		font.setPointSize(16)
		font.setBold(True)
		font.setWeight(75)
		self.btn_input_h.setFont(font)
		self.btn_input_h.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_input_h.setObjectName("btn_input_h")

		self.btn_input_h.clicked.connect(lambda: self.clicked(btn_P = False, btn_H = True))

		self.btn_input_p = QtWidgets.QPushButton(self.centralwidget)
		self.btn_input_p.setGeometry(QtCore.QRect(370, 10, 91, 31))
		font = QtGui.QFont()
		font.setPointSize(16)
		font.setBold(True)
		font.setWeight(75)
		self.btn_input_p.setFont(font)
		self.btn_input_p.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_input_p.setObjectName("btn_input_p")

		self.btn_input_p.clicked.connect(lambda: self.clicked(btn_P = True, btn_H = False))

		self.displayBox_amino = QtWidgets.QTextEdit(self.centralwidget)
		self.displayBox_amino.setGeometry(QtCore.QRect(40, 60, 401, 41))
		self.displayBox_amino.setReadOnly(True)
		self.displayBox_amino.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		self.displayBox_amino.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
		self.displayBox_amino.setObjectName("displayBox_amino")

		self.displayBox_amino.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)

		self.btn_clear = QtWidgets.QPushButton(self.centralwidget)
		self.btn_clear.setText("clear")
		self.btn_clear.setGeometry(QtCore.QRect(422, 105, 49, 19))
		self.btn_clear.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_clear.setObjectName("btn_clear")

		self.btn_clear.clicked.connect(lambda: self.clear_data())

		self.groupBox = QtWidgets.QGroupBox(self.centralwidget)
		self.groupBox.setGeometry(QtCore.QRect(80, 120, 321, 51))
		self.groupBox.setAutoFillBackground(True)
		self.groupBox.setAlignment(QtCore.Qt.AlignCenter)
		self.groupBox.setFlat(False)
		self.groupBox.setCheckable(False)
		self.groupBox.setObjectName("groupBox")

		self.lbl_auto_generate_h = QtWidgets.QLabel(self.groupBox)
		self.lbl_auto_generate_h.setGeometry(QtCore.QRect(10, 13, 31, 31))
		font = QtGui.QFont()
		font.setFamily("MS Shell Dlg 2")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		self.lbl_auto_generate_h.setFont(font)
		self.lbl_auto_generate_h.setObjectName("lbl_auto_generate_h")

		self.lbl_auto_generate_P = QtWidgets.QLabel(self.groupBox)
		self.lbl_auto_generate_P.setGeometry(QtCore.QRect(130, 13, 31, 31))
		font = QtGui.QFont()
		font.setFamily("MS Shell Dlg 2")
		font.setPointSize(12)
		font.setBold(True)
		font.setWeight(75)
		self.lbl_auto_generate_P.setFont(font)
		self.lbl_auto_generate_P.setObjectName("lbl_auto_generate_P")

		self.Input_auto_H = QtWidgets.QLineEdit(self.groupBox)
		self.Input_auto_H.setGeometry(QtCore.QRect(40, 19, 41, 20))
		self.Input_auto_H.setObjectName("Input_auto_H")

		self.Input_auto_P = QtWidgets.QLineEdit(self.groupBox)
		self.Input_auto_P.setGeometry(QtCore.QRect(160, 19, 41, 20))
		self.Input_auto_P.setObjectName("Input_auto_P")

		self.btn_generate_sequence = QtWidgets.QPushButton(self.groupBox)
		self.btn_generate_sequence.setGeometry(QtCore.QRect(256, 16, 60, 23))
		self.btn_generate_sequence.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_generate_sequence.setObjectName("btn_generate_sequence")

		self.btn_generate_sequence.clicked.connect(lambda: self.generate_random_sequence())

		self.line = QtWidgets.QFrame(self.centralwidget)
		self.line.setGeometry(QtCore.QRect(50, 185, 381, 20))
		self.line.setFrameShadow(QtWidgets.QFrame.Plain)
		self.line.setLineWidth(4)
		self.line.setMidLineWidth(4)
		self.line.setFrameShape(QtWidgets.QFrame.HLine)
		self.line.setObjectName("line")

		self.line = QtWidgets.QFrame(self.centralwidget)
		self.line.setGeometry(QtCore.QRect(50, 250, 381, 20))
		self.line.setFrameShadow(QtWidgets.QFrame.Plain)
		self.line.setLineWidth(4)
		self.line.setMidLineWidth(4)
		self.line.setFrameShape(QtWidgets.QFrame.HLine)
		self.line.setObjectName("line2")		

		self.btn_load_agent = QtWidgets.QPushButton(self.centralwidget)
		self.btn_load_agent.setGeometry(QtCore.QRect(50, 204, 90, 21))
		font = QtGui.QFont()
		font.setPointSize(8)
		font.setWeight(75)
		self.btn_load_agent.setFont(font)
		self.btn_load_agent.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_load_agent.setObjectName("btn_load_agent")

		self.btn_load_agent.clicked.connect(lambda: self.btn_load_agent_triggered())

		self.loadAgent_Status = QtWidgets.QTextEdit(self.centralwidget)
		self.loadAgent_Status.setGeometry(QtCore.QRect(150, 204, 90, 18))
		self.loadAgent_Status.setReadOnly(True)
		font = QtGui.QFont()
		font.setPointSize(7)
		font.setWeight(5)		
		self.loadAgent_Status.setFont(font)
		self.loadAgent_Status.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		self.loadAgent_Status.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
		self.loadAgent_Status.setObjectName("loadAgent_Status")

		self.btn_train_agent = QtWidgets.QPushButton(self.centralwidget)
		self.btn_train_agent.setGeometry(QtCore.QRect(170, 170, 110, 21))
		font = QtGui.QFont()
		font.setPointSize(8)
		font.setWeight(75)
		self.btn_train_agent.setFont(font)
		self.btn_train_agent.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_train_agent.setObjectName("btn_train_agent")

		self.btn_train_agent.clicked.connect(lambda: self.btn_train_agent_triggered())

		self.lbl_agent = QtWidgets.QLabel(self.centralwidget)
		self.lbl_agent.setGeometry(QtCore.QRect(50, 229, 100, 21))
		font = QtGui.QFont()
		font.setFamily("Lao")
		font.setPointSize(9)
		font.setBold(True)
		font.setWeight(75)
		self.lbl_agent.setFont(font)
		self.lbl_agent.setObjectName("lbl_agent")		

		self.displayBox_agent = QtWidgets.QTextEdit(self.centralwidget)
		self.displayBox_agent.setGeometry(QtCore.QRect(150, 230, 270, 18))
		self.displayBox_agent.setReadOnly(True)
		self.displayBox_agent.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
		self.displayBox_agent.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
		self.displayBox_agent.setObjectName("displayBox_agent")
	
		self.btn_show_fold_proc = QtWidgets.QPushButton(self.centralwidget)
		self.btn_show_fold_proc.setGeometry(QtCore.QRect(110, 280, 101, 41))
		font = QtGui.QFont()
		font.setPointSize(9)
		font.setBold(True)
		font.setWeight(75)
		self.btn_show_fold_proc.setFont(font)
		self.btn_show_fold_proc.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_show_fold_proc.setObjectName("btn_show_fold_proc")

		self.btn_show_fold_proc.clicked.connect(lambda: self.show_fold_proc())

		self.btn_show_fold_res = QtWidgets.QPushButton(self.centralwidget)
		self.btn_show_fold_res.setGeometry(QtCore.QRect(260, 280, 101, 41))
		font = QtGui.QFont()
		font.setPointSize(9)
		font.setBold(True)
		font.setWeight(75)
		self.btn_show_fold_res.setFont(font)
		self.btn_show_fold_res.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_show_fold_res.setObjectName("btn_show_fold_res")
		self.setCentralWidget(self.centralwidget)

		self.btn_show_fold_res.clicked.connect(lambda: self.show_fold_res())


		self.menubar = QtWidgets.QMenuBar(self)
		self.menubar.setGeometry(QtCore.QRect(0, 0, 478, 23))
		self.menubar.setObjectName("menubar")
		self.menuFile = QtWidgets.QMenu(self.menubar)
		self.menuFile.setObjectName("menuFile")
		self.menuAbout = QtWidgets.QMenu(self.menubar)
		self.menuAbout.setObjectName("menuAbout")
		self.setMenuBar(self.menubar)
		self.statusbar = QtWidgets.QStatusBar(self)
		self.statusbar.setObjectName("statusbar")
		self.setStatusBar(self.statusbar)

		self.actionSave = QtWidgets.QAction(self)
		self.actionSave.setObjectName("actionSave")
		self.actionSave.triggered.connect(lambda: self.save_amino())

		self.actionLoad = QtWidgets.QAction(self)
		self.actionLoad.setObjectName("actionLoad")
		self.actionLoad.triggered.connect(lambda: self.load_amino())

		self.actionHistory = QtWidgets.QAction(self)
		self.actionHistory.setObjectName("actionHistory")
		self.actionHistory.triggered.connect(lambda: self.show_History())

		self.menuFile.addAction(self.actionSave)
		self.menuFile.addAction(self.actionLoad)
		self.menuFile.addAction(self.actionHistory)

		self.actionAbout = QtWidgets.QAction(self)
		self.actionAbout.setObjectName("actionAbout")
		self.actionAbout.triggered.connect(lambda: self.show_Info())

		self.menuAbout.addAction(self.actionAbout)

		self.menubar.addAction(self.menuFile.menuAction())
		self.menubar.addAction(self.menuAbout.menuAction())

		self.retranslateUi()
		QtCore.QMetaObject.connectSlotsByName(self)


	def retranslateUi(self):
		_translate = QtCore.QCoreApplication.translate
		self.setWindowTitle(_translate("GUI", "Two Bidimensional Hydrophobic Polar Model"))
		self.lbl_input.setText(_translate("GUI", "Input Amino Acid Sequence :"))
		self.btn_input_h.setText(_translate("GUI", "H"))
		self.btn_input_p.setText(_translate("GUI", "P"))
		self.groupBox.setTitle(_translate("GUI", "Generate Random Sequence"))
		self.lbl_auto_generate_h.setText(_translate("GUI", "H :"))
		self.lbl_auto_generate_P.setText(_translate("GUI", "P :"))
		self.btn_generate_sequence.setText(_translate("GUI", "OK"))
		self.btn_load_agent.setText(_translate("GUI", "Load Agent"))
		self.loadAgent_Status.setText(_translate("GUI", "  Load Status"))
		self.btn_train_agent.setText(_translate("GUI", "Train Agent"))
		self.lbl_agent.setText(_translate("GUI", "Agent Directory :"))
		self.btn_show_fold_proc.setText(_translate("GUI", "Show Folding\n"
		"Process"))
		self.btn_show_fold_res.setText(_translate("GUI", "Show Folding\n"
		"Result"))
		self.menuFile.setTitle(_translate("GUI", "File"))
		self.menuAbout.setTitle(_translate("GUI", "About"))
		self.actionSave.setText(_translate("GUI", "Save Amino"))
		self.actionSave.setShortcut(_translate("GUI", "Ctrl+S"))
		self.actionLoad.setText(_translate("GUI", "Load Amino"))
		self.actionLoad.setShortcut(_translate("GUI", "Ctrl+O"))
		self.actionHistory.setText(_translate("GUI", "History"))
		self.actionHistory.setShortcut(_translate("GUI", "Ctrl+H"))
		self.actionAbout.setText(_translate("GUI", "Info"))

	def show_History(self):
	
		current_data = np.load("history/history_data.npy")
		self.table = tableClass(current_data)

		self.table.show()

	def show_Info(self):
		self.w = info_window()
		self.w.show()

	def save_amino(self):
		option = QtWidgets.QFileDialog.Options()
		open_dialog = QtWidgets.QFileDialog()
		file = open_dialog.getSaveFileName(self, 'Save File', "amino_data.npy", "npy (* .npy)", options = option)

		np.save(file[0], self.inp.settings['amino_container'])

	def load_amino(self):
		amino_sequence = ""

		open_dialog = QtWidgets.QFileDialog()
		file = open_dialog.getOpenFileName(self, 'Open File')
		try:
			self.clear_data()
			self.inp.settings['amino_container'] = list(np.load(file[0]))

			for i in self.inp.settings['amino_container']:
				amino_sequence += i

			self.displayBox_amino.setText(amino_sequence)	

		except Exception as e :
			self.show_message_box(Title = "Error", Text = "Oppss... failed to load Amino file!", icon = QMessageBox.Information)			

		finally:
			open_dialog.close()

	def btn_load_agent_triggered(self):		

		try:
			if len(self.inp.settings['amino_container']) == 0:
				self.show_message_box(Title = "Error", Text = "Please input amino acid, before load a model!", icon = QMessageBox.Information)
			else:
				self.loadAgent_Status.setText("Loading model..... ")
				dialog = QtWidgets.QFileDialog()
				folder_path = dialog.getExistingDirectory(None, "Select Folder")
				self.agent_Name = folder_path[65:]

				from Network_ import Nnet
				import tensorflow as tf
				
				amino_data = self.inp.settings['amino_container']
				sample_state = self.env.reset(amino_storage = amino_data)
				num_states = len(sample_state)

				self.model = Nnet(num_states) #Create a Fresh Network

			    # single forward pass to initialize net weight
				self.model.Net(np.array(sample_state).reshape(-1, len(sample_state)))
				
				loaded_Model = tf.saved_model.load(folder_path)
				self.loadAgent_Status.setText("Copying Network Weights... ")
				self.model.copy_Weights(source_model = loaded_Model)
				self.loadAgent_Status.setText("Model Loaded !!")

				self.displayBox_agent.setText(folder_path)

		except Exception as e :
			self.show_message_box(Title = "Error", Text = "Oppss... Failed to load model. Make sure you loaded a suifficient model!", icon = QMessageBox.Information)
			self.loadAgent_Status.setText("Load Failed..... ")


	def btn_train_agent_triggered(self):
		if len(self.inp.settings['amino_container']) == 0:
			self.show_message_box(Title = "Error", Text = "Please input amino acid, before train a model!", icon = QMessageBox.Information)	
		else:	
			self.ui = Ui_trainForm(self.inp.settings['amino_container'])
			self.ui.show()


	def clear_data(self):
		self.displayBox_amino.setText("")
		self.Input_auto_P.setText("")
		self.Input_auto_H.setText("")
		self.inp.settings['amino_container'] = []

	def clicked(self, btn_H = None, btn_P = None):

		#check if auto_generate input field is empty, if true, then do nothing, otherwise clear amino_container
		if self.generate_random == True:

			self.clear_data()
			self.add_btn_input(btn_H, btn_P)

			self.generate_random = False
		else:
			self.add_btn_input(btn_H, btn_P)

	def add_btn_input(self, btn_H, btn_P):
		amino_sequence = ""
		if btn_H == True:
			self.inp.settings['amino_container'].append("H")
		else:
			self.inp.settings['amino_container'].append('P')

		for i in self.inp.settings['amino_container']:
			amino_sequence += i
		self.displayBox_amino.setText(amino_sequence)  

	def generate_random_sequence(self):
		amino_sequence = ""
		H_num = self.Input_auto_H.text()
		P_num = self.Input_auto_P.text()		

		#check if H and P field is empty, if true, then show message box and do nothing, otherwise generate random sequence
		if  self.Input_auto_P.text() == empty and self.Input_auto_H.text() == empty:
			self.show_message_box(Title = "Error", Text = "H and P value is empty!", icon = QMessageBox.Information)
			return
		elif self.Input_auto_P.text() == empty:
			P_num = 0
			H_num = int(H_num)
		elif self.Input_auto_H.text() == empty:
			H_num = 0
			P_num = int(P_num)
		else:
			H_num = int(H_num)
			P_num = int(P_num)

		self.clear_data()
		self.generate_random = True

		#random 0.5 append H, and random 1 - 0.5 append P
		init_rand = 0.5

		Total_num = H_num + P_num

		#iterate over Total Num of amino sequence, and generate sequence
		for _ in range(Total_num):
			#check if probability init_p greater than 1 - init_p
			if random.random() > init_rand:
				if H_num == 0:
					if P_num == 0:
						return
					else:
						self.inp.settings['amino_container'].append("P")
						P_num -= 1						
				else:
					self.inp.settings['amino_container'].append("H")
					H_num -= 1					
			else:
				if P_num == 0:
					if H_num == 0:
						return
					else:
						self.inp.settings['amino_container'].append("H")
						H_num -= 1						
				else:
					self.inp.settings['amino_container'].append("P")
					P_num -= 1					

		#show amino_sequence from amino_container
		for i in self.inp.settings['amino_container']:
			amino_sequence += i
			self.displayBox_amino.setText(amino_sequence)

	def add_Data(self, current_data, data):
		current_data = np.insert(current_data, 1, data, axis = 0)
		return current_data			

	def show_fold_proc(self):
		amino = self.inp.settings['amino_container']
		fold_date = datetime.datetime.today().strftime('%d-%m-%Y')
		fold_length = len(amino)
		sequence = "".join(amino)
		free_Energy = 0
		folding_Time = 0

		if self.model == None:
			self.show_message_box(Title = "Error", Text = "Please load model to show folding process!", icon = QMessageBox.Information)
		else:
			from logDqn_Agent import Agent
			
			done = False
			observations = self.env.reset(amino_storage = amino)
			agent = Agent(self.env.action_Space, len(observations))
			agent.train_Model = self.model

			actionList = []
			start = time.perf_counter()
			while not done:
				prev_observations = observations
				action = agent.get_action(observations,  train = False)
				chosen_action, observations, reward, done, info = self.env.step(action)
				actionList.append(chosen_action)

			finish = time.perf_counter()
			fold_duration = float("{:.3f}".format(finish - start))
			folding_Time = str(fold_duration) + " s"

			sim = HP_simulation()

			current_state = sim.reset(amino_storage = amino)

			for i in range(len(actionList)):
				_, _, _ = sim.step(actionList[i] - 1)			
				sim.render()	

		free_Energy = sim.free_energy
		current_data = np.load("history/history_data.npy")
		new_data = [fold_date, fold_length, sequence, free_Energy, folding_Time, self.agent_Name]  #['Date', 'Length', 'Sequence', 'Energy Function', 'Folding Time', 'Agent Name]
		current_data = self.add_Data(current_data, new_data)
		np.save("history/history_data.npy", current_data)							


	def show_fold_res(self):

		amino = self.inp.settings['amino_container']
		fold_date = datetime.datetime.today().strftime('%d-%m-%Y')
		fold_length = len(amino)
		sequence = "".join(amino)
		free_Energy = 0
		folding_Time = 0

		if self.model == None:
			self.show_message_box(Title = "Error", Text = "Please load model to show folding process!", icon = QMessageBox.Information)
		else:
			from logDqn_Agent import Agent
			
			done = False
			observations = self.env.reset(amino_storage = amino)
			agent = Agent(self.env.action_Space, len(observations))
			agent.train_Model = self.model

			actionList = []
			start = time.perf_counter()
			while not done:
				prev_observations = observations
				action = agent.get_action(observations,  train = False)
				chosen_action, observations, reward, done, info = self.env.step(action)
				actionList.append(chosen_action)

			finish = time.perf_counter()
			fold_duration = float("{:.3f}".format(finish - start))
			folding_Time = str(fold_duration) + " s"

			sim = HP_simulation()

			current_state = sim.reset(amino_storage = amino)

			for i in range(len(actionList)):
				_, _, _ = sim.step(actionList[i] - 1)			
			
			sim.render(plot = True)	

		free_Energy = sim.free_energy
		current_data = np.load("history/history_data.npy")
		new_data = [fold_date, fold_length, sequence, free_Energy, folding_Time, self.agent_Name]  #['Date', 'Length', 'Sequence', 'Energy Function', 'Folding Time', 'Agent Name]
		current_data = self.add_Data(current_data, new_data)
		np.save("history/history_data.npy", current_data)	

	def show_message_box(self, Title = None, Text = None, icon=None):
		msg = QMessageBox()
		msg.setWindowTitle(Title)
		msg.setText(Text)
		msg.setIcon(icon)

		x = msg.exec_()


class Ui_trainForm(QMainWindow):

	def __init__(self, amino_container):
		super(QMainWindow, self).__init__()
		self.amino_data = amino_container
		self.setupUi()

	def setupUi(self):
		self.setObjectName("trainForm")
		self.resize(433, 280)
		self.centralwidget = QtWidgets.QWidget(self)
		self.centralwidget.setObjectName("centralwidget")

		self.gb_logdqn = QtWidgets.QGroupBox(self.centralwidget)
		self.gb_logdqn.setGeometry(QtCore.QRect(130, 10, 181, 80))
		self.gb_logdqn.setObjectName("gb_logdqn")

		self.lbl_c = QtWidgets.QLabel(self.gb_logdqn)
		self.lbl_c.setGeometry(QtCore.QRect(10, 20, 51, 16))
		self.lbl_c.setObjectName("lbl_c")

		self.lbl_k = QtWidgets.QLabel(self.gb_logdqn)
		self.lbl_k.setGeometry(QtCore.QRect(10, 40, 51, 16))
		self.lbl_k.setObjectName("lbl_k")

		self.lbl_dsc = QtWidgets.QLabel(self.gb_logdqn)
		self.lbl_dsc.setGeometry(QtCore.QRect(10, 60, 51, 16))
		self.lbl_dsc.setObjectName("lbl_dsc")

		self.l_c = QtWidgets.QLineEdit(self.gb_logdqn)
		self.l_c.setGeometry(QtCore.QRect(70, 20, 41, 16))
		self.l_c.setObjectName("l_c")

		self.l_k = QtWidgets.QLineEdit(self.gb_logdqn)
		self.l_k.setGeometry(QtCore.QRect(70, 40, 41, 16))
		self.l_k.setObjectName("l_k")

		self.l_dsc = QtWidgets.QLineEdit(self.gb_logdqn)
		self.l_dsc.setGeometry(QtCore.QRect(70, 60, 41, 16))
		self.l_dsc.setObjectName("l_dsc")

		self.btn_Start = QtWidgets.QPushButton(self.centralwidget)
		self.btn_Start.setGeometry(QtCore.QRect(180, 200, 75, 23))
		self.btn_Start.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
		self.btn_Start.setObjectName("btn_Start")

		self.btn_Start.clicked.connect(lambda: self.start_Training())

		self.pBar_Train = QtWidgets.QProgressBar(self.centralwidget)
		self.pBar_Train.setGeometry(QtCore.QRect(70, 240, 301, 20))
		self.pBar_Train.setProperty("value", 0)
		self.pBar_Train.setObjectName("pBar_Train")

		self.gb_train = QtWidgets.QGroupBox(self.centralwidget)
		self.gb_train.setGeometry(QtCore.QRect(10, 110, 411, 80))
		self.gb_train.setObjectName("gb_train")

		self.lbl_num_episodes = QtWidgets.QLabel(self.gb_train)
		self.lbl_num_episodes.setGeometry(QtCore.QRect(20, 20, 111, 16))
		self.lbl_num_episodes.setObjectName("lbl_num_episodes")

		self.l_num_episodes = QtWidgets.QLineEdit(self.gb_train)
		self.l_num_episodes.setGeometry(QtCore.QRect(140, 20, 41, 16))
		self.l_num_episodes.setObjectName("l_num_episodes")

		self.lbl_maxReplay = QtWidgets.QLabel(self.gb_train)
		self.lbl_maxReplay.setGeometry(QtCore.QRect(20, 40, 111, 16))
		self.lbl_maxReplay.setObjectName("lbl_maxReplay")

		self.l_maxReplay = QtWidgets.QLineEdit(self.gb_train)
		self.l_maxReplay.setGeometry(QtCore.QRect(140, 40, 41, 16))
		self.l_maxReplay.setObjectName("l_maxReplay")

		self.lbl_minReplay = QtWidgets.QLabel(self.gb_train)
		self.lbl_minReplay.setGeometry(QtCore.QRect(20, 60, 121, 16))
		self.lbl_minReplay.setObjectName("lbl_minReplay")

		self.l_minReplay = QtWidgets.QLineEdit(self.gb_train)
		self.l_minReplay.setGeometry(QtCore.QRect(140, 60, 41, 16))
		self.l_minReplay.setObjectName("l_minReplay")

		self.lbl_MiniBatch = QtWidgets.QLabel(self.gb_train)
		self.lbl_MiniBatch.setGeometry(QtCore.QRect(230, 20, 111, 16))
		self.lbl_MiniBatch.setObjectName("lbl_MiniBatch")

		self.l_MiniBatch = QtWidgets.QLineEdit(self.gb_train)
		self.l_MiniBatch.setGeometry(QtCore.QRect(350, 20, 41, 16))
		self.l_MiniBatch.setObjectName("l_MiniBatch")

		self.l_Epsilon = QtWidgets.QLineEdit(self.gb_train)
		self.l_Epsilon.setGeometry(QtCore.QRect(350, 40, 41, 16))
		self.l_Epsilon.setText("")
		self.l_Epsilon.setObjectName("l_Epsilon")

		self.lbl_Epsilon = QtWidgets.QLabel(self.gb_train)
		self.lbl_Epsilon.setGeometry(QtCore.QRect(230, 40, 111, 16))
		self.lbl_Epsilon.setObjectName("lbl_Epsilon")

		self.lbl_epsilonDecay = QtWidgets.QLabel(self.gb_train)
		self.lbl_epsilonDecay.setGeometry(QtCore.QRect(230, 60, 111, 16))
		self.lbl_epsilonDecay.setObjectName("lbl_epsilonDecay")

		self.l_epsilonDecay = QtWidgets.QLineEdit(self.gb_train)
		self.l_epsilonDecay.setGeometry(QtCore.QRect(350, 60, 41, 16))
		self.l_epsilonDecay.setText("")
		self.l_epsilonDecay.setObjectName("l_epsilonDecay")

		self.setCentralWidget(self.centralwidget)

		self.menubar = QtWidgets.QMenuBar(self)
		self.menubar.setGeometry(QtCore.QRect(0, 0, 433, 21))
		self.menubar.setObjectName("menubar")
		self.setMenuBar(self.menubar)
		self.statusbar = QtWidgets.QStatusBar(self)
		self.statusbar.setObjectName("statusbar")
		self.setStatusBar(self.statusbar)

		self.retranslateUi(self)
		QtCore.QMetaObject.connectSlotsByName(self)

	def retranslateUi(self, trainForm):
		_translate = QtCore.QCoreApplication.translate
		self.setWindowTitle(_translate("trainForm", "Train Agent"))
		self.gb_logdqn.setTitle(_translate("trainForm", "LogDQN Hyper-Parameter Settings"))
		self.btn_Start.setText(_translate("trainForm", "START "))
		self.gb_train.setTitle(_translate("trainForm", "Training Settings"))

		self.lbl_c.setText(_translate("trainForm", "c             :"))
		self.l_c.setText(_translate("trainForm", "0.5"))

		self.lbl_k.setText(_translate("trainForm", "k             :"))
		self.l_k.setText(_translate("trainForm", "100"))

		self.lbl_dsc.setText(_translate("trainForm", "discount :"))
		self.l_dsc.setText(_translate("trainForm", "0.1"))

		self.lbl_num_episodes.setText(_translate("trainForm", "Number Of Episodes :"))
		self.l_num_episodes.setText(_translate("trainForm", "6000"))

		self.lbl_maxReplay.setText(_translate("trainForm", "Max Replay Buffer   :"))
		self.l_maxReplay.setText(_translate("trainForm", "10000"))

		self.lbl_minReplay.setText(_translate("trainForm", "Min Replay Buffer    :"))
		self.l_minReplay.setText(_translate("trainForm", "100"))

		self.lbl_MiniBatch.setText(_translate("trainForm", "Mini Batch Size         :"))
		self.l_MiniBatch.setText(_translate("trainForm", "34"))

		self.lbl_Epsilon.setText(_translate("trainForm", "Epsilon                     :"))
		self.l_Epsilon.setText(_translate("trainForm", "0.99"))

		self.lbl_epsilonDecay.setText(_translate("trainForm", "Epsilon Decay Rate :"))
		self.l_epsilonDecay.setText(_translate("trainForm", "0.9991"))

	def start_Training(self):

		from logDqn_Agent import Agent
		from environment import HP_Environment_V2
		from statistics import mean
		from settings import settings

		import tensorflow as tf

		set_name = settings()
		self.model_name = set_name.settings['model_Name']		

		env = HP_Environment_V2()
		sample_state = env.reset(amino_storage = self.amino_data)


		num_states = len(sample_state)
		self.agent = Agent(env.action_Space, num_states,
						maxReplay_Buffer 		= int(self.l_maxReplay.text()),
						minReplay_Buffer 		= int(self.l_minReplay.text()),
						miniBatch_Size 			= int(self.l_MiniBatch.text()),
						#Decay epsilon each step
						epsilon_Decay 			= float(self.l_epsilonDecay.text()),
						#Bound the epsilon decay value to 'min_epsilon'
						gamma 					= float(self.l_dsc.text()),
						c 						= float(self.l_dsc.text()),
						k 						= float(self.l_dsc.text()))		

		num_episodes = int(self.l_num_episodes.text())
		pbar_value = 0
		pbar_incremental = float(num_episodes/100) # to fit progress bar value (0 - 100%)

		epsilon = float(self.l_Epsilon.text())
		total_rewards = np.empty(num_episodes + 1)

		current_time = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
		log_dir = f"logs/{self.model_name}--{current_time}"
		summary_writer = tf.summary.create_file_writer(log_dir)

		for episode in range(num_episodes + 1):
			if episode == num_episodes:
				pbar_value = 100
				self.pBar_Train.setValue(pbar_value)
				self.show_complete_message(Title = "Done!", Text = "Train Done! Save your model?", icon = QMessageBox.Information)
				pbar_value = 0
				self.pBar_Train.setValue(0)		
			else:	
				epsilon = max(self.agent.min_epsilon, epsilon * self.agent.epsilon_Decay)
				total_reward, total_Energy, losses = self.agent.run_SinglePass(env, episode = episode, amino_data = self.amino_data, epsilon = epsilon)
				total_rewards[episode] = total_reward
				self.avg_rewards = total_rewards[max(0, episode - 100):(episode + 1)].mean()

				with summary_writer.as_default():
					tf.summary.scalar('epsilon', epsilon, step=episode)          
					tf.summary.scalar('episode reward', total_reward, step=episode)
					tf.summary.scalar('episode energy', total_Energy, step=episode)
					tf.summary.scalar('running avg reward(100)', self.avg_rewards, step=episode)
					tf.summary.scalar('average loss)', losses, step=episode)				
				

				pbar_value += int(100/num_episodes)
				self.pBar_Train.setValue(pbar_value)

				if not episode % 100:
					print(f"sample state = {sample_state}")
					print(f"episode = {episode} ; q_v = {self.agent.train_Model.LogDqnPredict(sample_state, c = self.agent.c, pos_Delta = self.agent.pos_Delta, neg_Delta = self.agent.neg_Delta).q_values}")	
					print("****")
					print("Total_Energy:", total_Energy, "epsilon:", epsilon, "avg reward (last 100):", self.avg_rewards, "episode loss: ", losses)	
					print("****")				


	def show_complete_message(self, Title = None, Text = None, icon=None):
		msg = QMessageBox()
		msg.setWindowTitle(Title)
		msg.setText(Text)
		msg.setIcon(icon)
		msg.setStandardButtons(QMessageBox.Save | QMessageBox.Cancel)
		msg.buttonClicked.connect(self.save_model)

		x = msg.exec_()		

	def save_model(self, info):

		if info.text() == 'Save':
			dialog = QtWidgets.QFileDialog()
			folder_path = dialog.getExistingDirectory(None, "Select Folder")
			model_dir = folder_path + '/' 

			self.agent.save_Model(model_dir, self.model_name, self.avg_rewards)
		else:
			print("yahhh")


class info_window(QMainWindow):

	def __init__(self):
		super().__init__()
		self.setWindowTitle("About Us")
		self.setGeometry(600, 300, 250, 150)
		# vbox = QVBoxLayout()

		label = QLabel(self)
		label.setText("Copyright (c) Kodok Lunak Corporation.")
		label.setGeometry(35, 15, 200, 15)

		label2 = QLabel(self)
		label2.setText("Licensed under the MIT license.")
		label2.setGeometry(55, 40, 200, 15)

		img = QPixmap('C:/Users/ASUS/Pictures/Screenshots/frog.png')
		label3 = QLabel(self)
		label3.setPixmap(img)
		label3.setGeometry(65, 95, 120,120)

class tableClass(QWidget):	
	def __init__(self, current_data):
		super().__init__()
		self.title = 'History'
		self.left = 300
		self.top = 140
		self.width = 650
		self.height = 400
		self.current_data = current_data
		self.initUI()

	def initUI(self):
		self.setWindowTitle(self.title)
		self.setGeometry(self.left, self.top, self.width, self.height)

		self.createTable(self.current_data)

		# Add box layout, add table to box layout and add box layout to widget
		self.layout = QVBoxLayout()
		self.layout.addWidget(self.tableWidget) 
		self.setLayout(self.layout) 

		# Show widget
		self.show()	
	
	def createTable(self, current_data):
		# Create table
		self.tableWidget = QTableWidget()
		num_row = len(current_data)
		num_column = len(current_data[0])
		self.tableWidget.setRowCount(num_row)
		self.tableWidget.setColumnCount(num_column)

		for i in range(num_row):
			for j in range(num_column):
				self.tableWidget.setItem(i,j, QTableWidgetItem(current_data[i][j]))
		self.tableWidget.move(0,0)
		self.tableWidget.horizontalHeader().setVisible(False)

if __name__ == "__main__":
	app = QtWidgets.QApplication(sys.argv)
	# GUI = QtWidgets.QMainWindow()
	ui = Ui_GUI()
	# ui.setupUi(GUI)
	ui.show()
	sys.exit(app.exec_())

	


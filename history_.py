"""
----------------------------------------
Author  : Alvin Watner
Email   : alvin2phantomhive@gmail.com
Website : -
License : MIT
-----------------------------------------
**Please feel free to use and modify this, but keep the above information. Thanks!**

"""

import sys
from PyQt5.QtWidgets import QMainWindow, QApplication, QWidget, QAction, QTableWidget,QTableWidgetItem,QVBoxLayout
from PyQt5.QtGui import QIcon
from PyQt5.QtCore import pyqtSlot
import numpy as np

class tableClass(QWidget):

    def __init__(self, current_data):
        super().__init__()
        self.title = 'History'
        self.left = 0
        self.top = 0
        self.width = 550
        self.height = 200
        self.initUI()
        
    def initUI(self):
        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)
        
        self.createTable(current_data)

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

        # table selection change
        self.tableWidget.doubleClicked.connect(self.on_click)

    @pyqtSlot()
    def on_click(self):
        print("\n")
        for currentQTableWidgetItem in self.tableWidget.selectedItems():
            print(currentQTableWidgetItem.row(), currentQTableWidgetItem.column(), currentQTableWidgetItem.text())
 
if __name__ == '__main__':
    app = QApplication(sys.argv)
    def add_Data(current_data, data):
        current_data = np.insert(current_data, 1, data, axis = 0)
        return current_data

    init_Data = np.array([['Date', 'Length', 'Sequence', 'Free Energy', 'Folding Time', 'Agent Name']])
    current_data = init_Data
    np.save("history/history_data.npy" , current_data)
    # new_data = np.random.rand(1,5)

    # current_data = add_Data(current_data, new_data)
    # current_data = add_Data(current_data, new_data)
    # current_data = add_Data(current_data, new_data)

    ex = tableClass(current_data)
    sys.exit(app.exec_())  
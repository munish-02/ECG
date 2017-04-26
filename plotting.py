import csv
import matplotlib.pyplot as plt
i=0
y=[]
with open('C:/Python27/ecg-K2.csv','rb') as csvfile:
	spamreader=csv.reader(csvfile,delimiter=',',quotechar='|')
	for row in spamreader:
		y= y+(row)
		i=i+1
print y
print i
plt.plot(y)
plt.ylabel('Voltage')
plt.show()

import time

f = open("a.log","r")
csv_file = open("att.csv","w")

for line in f:
    if 'ATT' in line[:3]:
        csv_file.write(line)
        print(line)



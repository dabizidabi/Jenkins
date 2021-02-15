#!/bin/bash

#Author: Mykola Zoshchuk
#Create date: 15/02/2021
#Description: Put names in file names.txt to database
#Modify: 15/02/2021

counter=0

while [ $counter -lt 50 ]
do
	let counter=counter+1
	name=$(nl names.txt | grep -w $counter | awk '{print $2}')
	lastname=$(nl names.txt | grep -w $counter | awk '{print $3}')
	age=$(shuf -i 20-50 -n 1) #set random age 20-50

	mysql -uroot -p1234 people -e "insert into register values ($counter, '$name', '$lastname', $age)"
	echo "$name,$lastname,$age imported"
done 



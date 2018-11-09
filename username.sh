#! /bin/bash
# username.sh
echo "Enter a username: "
read USER

while echo ${USER:0:1} | egrep -v "^[a-z]{1}$" > /dev/null 2>&1
do
	echo "must start lowercase"
	read USER
done
	

while echo $USER | egrep -v "^[a-z0-9_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username! Can only have lowercase letters, numbers, and an underscore!"
	echo "Must also start with lowercase letter"	
	echo "Enter a username: "
	read USER
done
echo "Thank you"


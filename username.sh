#! /bin/bash
# username.sh
echo "Enter a username: "
read USER


	

while echo $USER | egrep -v "^[a-z][a-z0-9_]{2-11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username! Can only have lowercase letters, numbers, and an underscore!"
	echo "Must also start with lowercase letter"	
	echo "Enter a username: "
	read USER
done
echo "Thank you"


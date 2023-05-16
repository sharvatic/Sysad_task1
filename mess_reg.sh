#!/bin/bash

# SCRIPT IS BEING RUN BY A STUDENT

Name=$(whoami)

if grep -q $Name /mydir/studentDetails.txt
then

Roll=$(awk 'NR == 2 {print $2}' Userdetails.txt)

echo "Fill up the mess preferences below like pref1>pref2>pref3 without spaces"
echo "For example 3>1>2 where number denotes the number of the mess"
read input

sed -e "/$Roll/s/-/$input/" Userdetails.txt > New.txt
cp New.txt Userdetails.txt

sed -e "/$Roll/s/-/$input/" /mydir/studentDetails.txt > New.txt
cp New.txt /mydir/studentDetails.txt

rm New.txt

echo "$Roll $input" >>/mydir/mess.txt


else
echo "User not permitted to register for mess"
fi

#####################################
#echo "Please enter your password for final conformation"

#su - root -c "cp -rp /mydir/* /home/HAD/mydir"



#!/bin/bash

# SCRIPT IS BEING RUN BY HOSTEL WARDENS


rnum=$(awk '{print $2}' /mydir/studentDetails.txt)

for roll in $rnum
do
grep "$roll" /mydir/studentDetails.txt >New.txt
user=$(awk '{print $1}' New.txt)
rm New.txt

num=$(awk 'NR == 7 {print $4}' /home/$user/fees.txt)
if [ $num != 0 ]
then
   echo "$user $roll" >>feeDefaulters.txt
   
fi
done

##############################
echo "Enter your password"

if [ $ward == GA_warden ]
then
sudo su - root -c "cp -rp /home/$ward/mydir/* /mydir1"
fi

if [ $ward == GB_warden ]
then
sudo su - root -c "cp -rp /home/$ward/mydir/* /mydir2"
fi

if [ $ward == AG_warden ]
then
sudo su - root -c "cp -rp /home/$ward/mydir/* /mydir3"
fi

if [ $ward == OP_warden ]
then
sudo su - root -c "cp -rp /home/$ward/mydir/* /mydir4"
fi


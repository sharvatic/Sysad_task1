#!/bin/bash

echo "Enter your departure date"
read dep_dt

echo "Enter your arrival date"
read arr_dt

rnum=$(awk 'NR == 2 {print $2}' Userdetails.txt)

echo "$dep_dt $arr_dt -" >>Permission.txt

echo "Please enter your password below"

hostel=$(awk 'NR == 2 {print $3}' Userdetails.txt)

  if [ $Hostel == GarnetA ]
   then
      sudo su - root -c "echo $rnum $dep_dt $arr_dt >>/home/GA_warden/mydir/Signout.txt"
   fi
   
   if [ $Hostel == GarnetB ]
   then
      sudo su - root -c "echo $rnum $dep_dt $arr_dt >/home/GB_warden/mydir/Signout.txt"
   fi
   
   if [ $Hostel == Agate ]
   then
      sudo su - root -c "echo $rnum $dep_dt $arr_dt >/home/AG_warden/mydir/Signout.txt"
   fi
   
   if [ $Hostel == Opal ]
   then
      sudo su - root -c "echo $rnum $dep_dt $arr_dt >/home/OP_warden/mydir/Signout.txt"
   fi
   

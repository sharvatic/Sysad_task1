#!/bin/bash

cat fees.txt

amt_tbp=100000

for (( i=0;i<4;i++ ))
do

echo "Enter the category no. to pay for respective category"
echo "Type exit if you want to leave"
read num


if [ $num == exit ]
then
  break
fi



a=`expr $num + 1`


sed "${a}q;d" fees.txt >New.txt
   name=$(awk '{print $2}' New.txt)
   amt=$(awk '{print $3}' New.txt)
   stat=$(awk '{print $4}' New.txt)
  
  rm New.txt
  
  hostel=$(awk 'NR == 2 {print $3}' Userdetails.txt)
  rnum=$(awk 'NR == 2 {print $2}' Userdetails.txt)
  
  if [ $stat == Paid ]
  then
     echo "Already paid for this category"
     ((i=i-1))
     continue
  fi
  
  temp=$amt_tbp
   
   echo "Proceed to pay for $name ? [y/n]"
   read in
   
   if [ $in == y ]
   then
	echo "paid for the $name fees"
	
	sed -i -e "/$name/s/Pending/Paid/" fees.txt
	
	
	
	amt_tbp=`expr $temp - $amt`
	
	sed -i -e "/Amount/s/$temp/$amt_tbp/" fees.txt
	

	cat fees.txt
   fi
	
done

tbp=$(awk 'NR == 7 {print $4}' fees.txt)

if [ $tbp == 0 ]
then

  if [ $hostel == GarnetA ]
   then
      lines=$(wc -l < /mydir1/Announcements.txt)
      echo "First 5 students to pay fees in Garnet A are - " >>/mydir1/Announcements.txt
      if [ $lines -lt 6 ]
      then
         echo $rnum >>/mydir1/Announcements.txt
	 echo "Please enter your password for final conformation"
	 sudo su - root -c "cp -rp /mydir1/* /home/GA_warden/mydir"
      fi
   fi
   
   if [ $hostel == GarnetB ]
   then
      lines=$(wc -l < /mydir2/Announcements.txt)
      echo "First 5 students to pay fees in Garnet B are - " >>/mydir2/Announcements.txt
      if [ $lines -lt 6 ]
      then
         echo $rnum >>/mydir2/Announcements.txt
	 echo "Please enter your password for final conformation"
	 sudo su - root -c "cp -rp /mydir2/* /home/GB_warden/mydir"
      fi
   fi
   
   if [ $hostel == Agate ]
   then
      lines=$(wc -l < /mydir3/Announcements.txt)
      echo "First 5 students to pay fees in Agate - " >>/mydir3/Announcements.txt
      if [ $lines -lt 6 ]
      then
         echo $rnum >>/mydir3/Announcements.txt
	 echo "Please enter your password for final conformation"
	 sudo su - root -c "cp -rp /mydir3/* /home/AG_warden/mydir"
      fi
   fi
   
   if [ $hostel == Opal ]
   then
      lines=$(wc -l < /mydir4/Announcements.txt)
      echo "First 5 students to pay fees in Opal are - " >>/mydir4/Announcements.txt
      if [ $lines -lt 6 ]
      then
         echo $rnum >>/mydir4/Announcements.txt
	 echo "Please enter your password for final conformation"
	 sudo su - root -c "cp -rp /mydir4/* /home/OP_warden/mydir"
      fi
   fi
fi


	
    

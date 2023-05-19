#!/bin/bash

cd /

useradd -m HAD >/dev/null;echo "HAD:admin@123" | sudo chpasswd

useradd -m GA_warden >/dev/null;echo "GA_warden:admin@123" | sudo chpasswd
setfacl -m u:HAD:rwx /home/GA_warden

useradd -m GB_warden >/dev/null;echo "GB_warden:admin@123" | sudo chpasswd
setfacl -m u:HAD:rwx /home/GB_warden

useradd -m AG_warden >/dev/null;echo "AG_warden:admin@123" | sudo chpasswd
setfacl -m u:HAD:rwx /home/AG_warden

useradd -m OP_warden >/dev/null;echo "OP_warden:admin@123" | sudo chpasswd
setfacl -m u:HAD:rwx /home/OP_warden

mkdir /home/HAD/mydir
mkdir /mydir
setfacl -m u:HAD:rwx /mydir
cp /home/studentDetails.txt /home/HAD/mydir/studentDetails.txt
cp /home/mess.txt /home/HAD/mydir/mess.txt
cp /home/messalloc.sh /home/HAD/mydir/messalloc.sh

chown HAD /home/HAD/mydir/studentDetails.txt
chmod 777 /home/HAD/mydir/studentDetails.txt
chown HAD /home/HAD/mydir/mess.txt
chmod 777 /home/HAD/mydir/mess.txt
chown HAD /home/HAD/mydir/messalloc.sh
chmod 770 /home/HAD/mydir/messalloc.sh

echo "alias messAllocation='. messalloc.sh'" >>/home/HAD/.bashrc

cp -rp /home/HAD/mydir/* /mydir


mkdir /home/GA_warden/mydir
mkdir /mydir1
chmod 770 /mydir1
setfacl -m u:GA_warden:rwx /mydir1
touch /home/GA_warden/mydir/Announcements.txt
chown GA_warden /home/GA_warden/mydir/Announcements.txt
chmod 775 /home/GA_warden/mydir/Announcements.txt
echo "First 5 students to pay fees in Garnet A are - " >/mydir1/Announcements.txt

touch /home/GA_warden/mydir/Feedefaulters.txt
chown GA_warden /home/GA_warden/mydir/Feedefaulters.txt
chmod 775 /home/GA_warden/mydir/Feedefaulters.txt

touch /home/GA_warden/mydir/Signout.txt
chown GA_warden /home/GA_warden/mydir/Signout.txt
chmod 770 /home/GA_warden/mydir/Signout.txt

cp /home/Leave.sh /home/GA_warden/mydir/Leave.sh
chown GA_warden /home/GA_warden/mydir/Leave.sh
chmod 770 /home/GA_warden/mydir/Leave.sh

cp /home/fee_defaulters.sh /home/GA_warden/mydir/fee_defaulters.sh
chown GA_warden /home/GA_warden/mydir/fee_defaulters.sh
chmod 770 /home/GA_warden/mydir/fee_defaulters.sh

echo "alias updateDefaulter='. fee_defaulters.sh'" >>/home/GA_warden/.bashrc

cp -rp /home/GA_warden/mydir/* /mydir1



mkdir /home/GB_warden/mydir
mkdir /mydir2

chmod 770 /mydir2
setfacl -m u:GB_warden:rwx /mydir2
touch /home/GB_warden/mydir/Announcements.txt
chown GB_warden /home/GB_warden/mydir/Announcements.txt
chmod 775 /home/GB_warden/mydir/Announcements.txt
echo "First 5 students to pay fees in Garnet B are - " >/mydir2/Announcements.txt

touch /home/GB_warden/mydir/Feedefaulters.txt
chown GB_warden /home/GB_warden/mydir/Feedefaulters.txt
chmod 775 /home/GB_warden/mydir/Feedefaulters.txt

touch /home/GB_warden/mydir/Signout.txt
chown GB_warden /home/GB_warden/mydir/Signout.txt
chmod 775 /home/GA_warden/mydir/Signout.txt

cp /home/Leave.sh /home/GB_warden/mydir/Leave.sh
chown GB_warden /home/GB_warden/mydir/Leave.sh
chmod 775 /home/GB_warden/mydir/Leave.sh

cp /home/fee_defaulters.sh /home/GB_warden/mydir/fee_defaulters.sh
chown GB_warden /home/GB_warden/mydir/fee_defaulters.sh
chmod 775 /home/GB_warden/mydir/fee_defaulters.sh

echo "alias updateDefaulter='. fee_defaulters.sh'" >>/home/GB_warden/.bashrc

cp -rp /home/GB_warden/mydir/* /mydir2



mkdir /home/AG_warden/mydir
mkdir /mydir3
chmod 770 /mydir3
setfacl -m u:AG_warden:rwx /mydir3
touch /home/AG_warden/mydir/Announcements.txt
chmod 775 /home/AG_warden/mydir/Announcements.txt
echo "First 5 students to pay fees in Agate - " >/mydir3/Announcements.txt

touch /home/AG_warden/mydir/Feedefaulters.txt
chmod 775 /home/AG_warden/mydir/Feedefaulters.txt

touch /home/AG_warden/mydir/Signout.txt
chmod 775 /home/AG_warden/mydir/Signout.txt

cp /home/Leave.sh /home/AG_warden/mydir/Leave.sh
chmod 775 /home/AG_warden/mydir/Leave.sh

cp /home/fee_defaulters.sh /home/AG_warden/mydir/fee_defaulters.sh
chmod 775 /home/AG_warden/mydir/fee_defaulters.sh

chown AG_warden /home/GA_warden/mydir/Announcements.txt
chown AG_warden /home/GA_warden/mydir/Feedefaulters.txt
chown AG_warden /home/GA_warden/mydir/Signout.txt
chown AG_warden /home/GA_warden/mydir/Leave.sh
chown AG_warden /home/GA_warden/mydir/fee_defaulters.sh

echo "alias updateDefaulter='. fee_defaulters.sh'" >>/home/AG_warden/.bashrc

cp -rp /home/AG_warden/mydir/* /mydir3



mkdir /home/OP_warden/mydir
mkdir /mydir4
chmod 770 /mydir4
setfacl -m u:OP_warden:rwx /mydir4
touch /home/OP_warden/mydir/Announcements.txt
chmod 775 /home/OP_warden/mydir/Announcements.txt
echo "First 5 students to pay fees in Opal are - " >/mydir4/Announcements.txt

touch /home/OP_warden/mydir/Feedefaulters.txt
chmod 775 /home/OP_warden/mydir/Feedefaulters.txt

touch /home/GA_warden/mydir/Signout.txt
chmod 775 /home/GA_warden/mydir/Signout.txt

cp /home/Leave.sh /home/OP_warden/mydir/Leave.sh
chmod 775 /home/OP_warden/mydir/Leave.sh

cp /home/fee_defaulters.sh /home/OP_warden/mydir/fee_defaulters.sh
chmod 775 /home/OP_warden/mydir/fee_defaulters.sh

chown OP_warden /home/GA_warden/mydir/Announcements.txt
chown OP_warden /home/GA_warden/mydir/Feedefaulters.txt
chown OP_warden /home/GA_warden/mydir/Signout.txt
chown OP_warden /home/GA_warden/mydir/Leave.sh
chown OP_warden /home/GA_warden/mydir/fee_defaulters.sh

echo "alias updateDefaulter='. fee_defaulters.sh'" >>/home/OP_warden/.bashrc

cp -rp /home/OP_warden/mydir/* /mydir4

Username=$(awk 'NR>1 {print $1}' /home/sharvwadhavekar/Documents/studentDetails.txt)

#password=admin@123

i=1
for user in $Username
do
   
   ((i=i+1))
   

   sed "${i}q;d" /home/HAD/mydir/studentDetails.txt >New.txt
   Hostel=$(awk '{print $3}' New.txt)
   rm New.txt
   echo $Hostel
  
  useradd -m $user >/dev/null;echo "$user:admin@123" | sudo chpasswd
  
     setfacl -m u:HAD:rwx /home/$user
     setfacl -m u:$user:r-x /mydir
     
   # ADDING FILES TO DIR OF USER
  
   sed "1q;d" /home/HAD/mydir/studentDetails.txt >>/home/$user/Userdetails.txt
   sed "${i}q;d" /home/HAD/mydir/studentDetails.txt >>/home/$user/Userdetails.txt
   chown $user /home/$user/Userdetails.txt
   chmod 750 /home/$user/Userdetails.txt
   setfacl -m u:HAD:rwx /home/$user/Userdetails.txt
   
   cp /home/mess_reg.sh /home/$user/mess_reg.sh
   chown $user /home/$user/mess_reg.sh
   chmod 750 /home/$user/mess_reg.sh
   setfacl -m u:HAD:rwx /home/$user/mess_reg.sh
   
   echo "alias messAllocation='. mess_reg.sh'" >>/home/$user/.bashrc
   
   cp /home/fees.txt /home/$user/fees.txt
   chown $user /home/$user/fees.txt
   chmod 750 /home/$user/fees.txt
   setfacl -m u:HAD:rwx /home/$user/fees.txt
   
   
   cp /home/Fees.sh /home/$user/fees.sh
   chown $user /home/$user/fees.sh
   chmod 750 /home/$user/fees.sh
   setfacl -m u:HAD:rwx /home/$user/fees.sh
   
   echo "alias feeBreakup='. fees.sh'" >>/home/$user/.bashrc
    	
   cp /home/Permission.txt /home/$user/Permission.txt
   chown $user /home/$user/Permission.txt
   chmod 750 /home/$user/Permission.txt
   setfacl -m u:HAD:rwx /home/$user/Permission.txt
   
   cp /home /home/$user/Signout.sh
   chown $user /home/$user/signout.sh
   chmod 750 /home/$user/signout.sh
   setfacl -m u:HAD:rwx /home/$user/signout.sh
   echo"alias signout='. signout.sh'" >>/home/$user/.bashrc
   
     
   if [ $Hostel == GarnetA ]
   then
      setfacl -m u:GA_warden:rwx /home/$user
      setfacl -m u:$user:r-x /mydir1
      setfacl -m u:GA_warden:rwx /home/$user/Userdetails.txt
      setfacl -m u:GA_warden:rwx /home/$user/mess_reg.sh
      setfacl -m u:GA_warden:rwx /home/$user/fees.txt
      setfacl -m u:GA_warden:rwx /home/$user/fees.sh
      setfacl -m u:GA_warden:rwx /home/$user/Permission.txt
      setfacl -m u:GA_warden:rwx /home/$user/signout.sh
   fi
   
   if [ $Hostel == GarnetB ]
   then
      setfacl -m u:GB_warden:rwx /home/$user
      setfacl -m u:$user:r-x /mydir2
      setfacl -m u:GB_warden:rwx /home/$user/Userdetails.txt
      setfacl -m u:GB_warden:rwx /home/$user/mess_reg.sh
      setfacl -m u:GB_warden:rwx /home/$user/fees.txt
      setfacl -m u:GB_warden:rwx /home/$user/fees.sh
      setfacl -m u:GB_warden:rwx /home/$user/Permission.txt
      setfacl -m u:GB_warden:rwx /home/$user/signout.sh
   fi
   
   if [ $Hostel == Agate ]
   then
      setfacl -m u:AG_warden:rwx /home/$user
      setfacl -m u:$user:r-x /mydir3
      setfacl -m u:AG_warden:rwx /home/$user/Userdetails.txt
      setfacl -m u:AG_warden:rwx /home/$user/mess_reg.sh
      setfacl -m u:AG_warden:rwx /home/$user/fees.txt
      setfacl -m u:AG_warden:rwx /home/$user/fees.sh
      setfacl -m u:AG_warden:rwx /home/$user/Permission.txt
      setfacl -m u:AG_warden:rwx /home/$user/signout.sh
   fi
   
   if [ $Hostel == Opal ]
   then
      setfacl -m u:OP_warden:rwx /home/$user
      setfacl -m u:$user:r-x /mydir4
      setfacl -m u:OP_warden:rwx /home/$user/Userdetails.txt
      setfacl -m u:OP_warden:rwx /home/$user/mess_reg.sh
      setfacl -m u:OP_warden:rwx /home/$user/fees.txt
      setfacl -m u:OP_warden:rwx /home/$user/fees.sh
      setfacl -m u:OP_warden:rwx /home/$user/Permission.txt
      setfacl -m u:OP_warden:rwx /home/$user/signout.sh
   fi

  done
  
  
  
  
  
  
  
  
  
  
  

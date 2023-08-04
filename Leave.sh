#!/bin/bash

num=$(wc -l <Signout.txt)

for (( i=1; i<=$num; i++ ))
do
sed "${i}q;d" Signout.txt >New.txt
awk '{print $0}' New.txt
rnum=$(awk '{print $1}' New.txt)
grep "$rnum" /mydir/studentDetails.txt >New.txt
user=$(awk '{print $1}' New.txt)
rm New.txt

echo "Do you want to provide permission [y/n]"
read in

if [ $in == y ]
then
  sed -i "s/-/Granted/g" /$user/Permission.txt
else
  sed -i "s/-/Rejected/g" /$user/Permission.txt
fi

done

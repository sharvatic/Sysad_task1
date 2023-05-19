#!/bin/bash

# SCRIPT IS BEING RUN BY HAD

cp -rp /mydir/* /home/HAD/mydir

num=$(wc -l < mess.txt)
num=`expr $num - 5`
c1=0
c2=0
c3=0
j=5

for (( i=1; i<=$num; i++ ))
do
j=`expr $j + 1`
sed "${j}q;d" /mydir/mess.txt >New.txt

text=$(awk '{print $2}' New.txt)
rnum=$(awk '{print $1}' New.txt)
grep "$rnum" /mydir/studentDetails.txt >New.txt
us=$(awk '{print $1}' New.txt)
mess=$(awk '{print $5}' New.txt)
rm New.txt

pref=$(echo $text | tr ">" "\n")
val=0

  for pr in $pref
  do
    case "$pr" in
     "1") if [ $c1 -lt 35 ]
     	  then
     	    c1=`expr $c1 + 1`
     	    
     	    sed -i -e "/$rnum/s/$mess/Mess1/" /home/$us/Userdetails.txt
     	    sed -i -e "/$rnum/s/$mess/Mess1/" /mydir/studentDetails.txt
     	    
     	    val=1
  	    fi
  	;;
  	
     "2") if [ $c2 -lt 35 ]
     	  then
     	  c2=`expr $c2 + 1`
     	  
     	  
     	  sed -i -e "/$rnum/s/$mess/Mess2/" /home/$us/Userdetails.txt
     	  sed -i -e "/$rnum/s/$mess/Mess2/" studentDetails.txt
     	  
     	  val=1
  	  fi
  	;;
  	
     "3") if [ $c3 -lt 35 ]
     	  then
     	  c3=`expr $c3 + 1`
     	  
     	  
     	  sed -i -e "/$rnum/s/$mess/Mess3/" home/$us/Userdetails.txt
     	  sed -i -e "/$rnum/s/$mess/Mess3/" studentDetails.txt
     	  
     	  val=1
  	  fi
  	;;
    esac
    
    if [ $val == 1 ]
    then 
       break
    fi
  		
  done

  if [ $val == 0 ]
  then
    echo "Mess registration over"
    break
  fi

done


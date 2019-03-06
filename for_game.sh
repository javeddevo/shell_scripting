#!/bin/bash
Default_c="\e[0m"
Red_c="\e[32m"
echo -e "${Red_c}=========================WELCOME TO THE NO GUESS GAME=============${Default_c}"
echo ""
echo ""
echo "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b Your guess should be from 1-100"
echo ""
echo ""
secno=30
chance=3
i=3
for each in `seq 1 3`
do 
  read -p "Enter your guess no: " input
  if [ ${input} -eq ${secno} ]
  then
   echo "===================CONGRATSGULATIONS!YOU WON THE GAME================="
  break
   else
    echo ""
    echo -e "${Red_c}wrong guess${Default_c}"
    i=$(( i - 1 ))
     if [ $i -eq 0 ]
      then 
       echo "Your chanches are over.Better luck next time"
     else 
       echo "You have ${i} chanches"
     fi
   fi
done

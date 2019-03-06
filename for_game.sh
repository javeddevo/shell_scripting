echo "============WELCOME TO THE NO GUESS GAME============="
sleep 1
echo "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b Your guess should be from 1-100"
secno=30
chance=3
i=3
for each in `seq 1 3`
do 
  read -p "Enter your guess no: " input
  if [ ${input} -eq ${secno} ]
  then
   echo "CONGRATSGULATIONS!YOU WON THE GAME"
   break
  else
   echo "wrong guess"
    i=$(( i - 1 ))
     if [ $i -eq 0 ]
      then 
       echo "Your chanches are over.Better luck next time"
     else 
       echo "You have ${i} chanches"
     fi
   fi
done

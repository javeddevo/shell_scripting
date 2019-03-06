user_id=`id -u ${USER}`
sudo_pri=`sudo -l`
sudo_status= `echo $?`
if [ ${user_id} -eq 0 ]
then
   echo "Your are ${USER} user and having sudo privaleges"
else
   echo  "you are not a root user" 
fi



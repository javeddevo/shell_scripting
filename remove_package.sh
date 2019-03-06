echo "Enter package name you want remove:" 
read a
package=`dpkg -l | grep $a | awk '{print$2}'`
if [ ${package} = $a ]
then
 sudo apt-get remove $a -y
else 
 echo "already removed"
fi

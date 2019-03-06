fucntion service_package_action
{
  id_user=`id -u ${USER}`
  if [ ${id_user} -eq 0 ]
  then
   service ${system_service} ${action}
  else
   echo "Be a root user man"
   exit 2
  fi
}

system_service=$1
action=$2
current_status=`service ssh status | grep Active | awk '{print $2}'`
echo "current status of ${system_service} is \"${current_status}\""
case ${action} in
 "start") echo "action is started"
          if [ ${current_status} != "active" ]
          then
            service_package_action
          fi
          ;;
 "stop") echo "action is stopped"
         if [ ${current_status} = "active" ]
         then
          service_package_action
         fi
         ;;
 "status") echo "current status of ${system_service} is \"${current_status}\""
           ;;
 "*") echo "invalid option"
      ;;
esac



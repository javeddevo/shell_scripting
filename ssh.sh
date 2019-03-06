system_service=$1
action=$2
current_status=`service ssh status | grep Active | awk '{print $2}'`
echo "current status of ${system_service} is \"${current_status}\""
case ${action} in
 "start") echo "action is started"
          if [ ${current_status} != "active" ]
          then
           service ${system_service} start
          fi
          ;;
 "stop") echo "action is stopped"
         if [ ${current_status} = "active" ]
         then
          service ${system_active} stop
         fi
         ;;
 "status") echo "current status of ${system_service} is \"${current_status}\""
           ;;
 "*") echo "invalid option"
      ;;
esac





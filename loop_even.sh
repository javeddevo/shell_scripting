for each in `seq 1 100`
do
    rem=$(( each % 2 ))
    if [ ${rem} -eq 0 ]
    then 
     echo "the no $each is even"
    else
     echo "the no $each is odd"
    fi
done   
  



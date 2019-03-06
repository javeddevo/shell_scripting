for each in `ls $1`
do
echo ${each}
if [ -e ${each} ]
then
echo "file is there"
else
echo "file absent"
fi
done

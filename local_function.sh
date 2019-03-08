<<hello
addition()
{
a=$1
b=$2
sum=$(( a + b ))
}

display()
{
echo "the value of a is $a"
}
addition 4 5
echo "the addition of a and b is $sum"
display
hello
devops()
{
a=$1
b=$2
sum=$((a+b))
echo "$sum"
}
x=`devops 4 5`
echo the output is "${x}"

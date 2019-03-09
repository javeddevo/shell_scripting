<<comment
a=3
b=4
hello()
{
  echo "helloworld"
  sum=$(( a + b ))
  echo "the addition of $a and $b is $sum"
}
hello
comment
hai()
{
a=$1
b=$2
sum=$((a*b))
echo "addition of $a and $b is:$sum"
}
hai 45 6


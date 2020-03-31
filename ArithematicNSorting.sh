echo "Enter three numbers:"
read a
read b
read c
resultExpr1=$(($a+$(($b*$c))))
echo "Result of Expression:"$resultExpr1

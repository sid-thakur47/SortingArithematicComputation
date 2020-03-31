echo "Enter three numbers:"
read a
read b
read c
resultExpr1=$(($a+$(($b*$c))))
resultExpr2=$(($(($a*$b))+$c))
resultExpr3=$(($c+$(($a/$b))))
resultExpr4=$(($(($a%$b))+$c))

echo -e "Result of:\n1 is $resultExpr1\n2 is $resultExpr2\n3 is $resultExpr3\n4 is $resultExpr4"

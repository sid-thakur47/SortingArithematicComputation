echo "Enter three numbers:"
read a
read b
read c
resultExpr1=$(($(($a+$b))*$c))
resultExpr2=$(($(($a*$b))+$c))
echo -e "Result of Expression- \n1 is $resultExpr1 \n2 is $resultExpr2"

declare -A exprDict
declare -a convertedInArray

echo "Enter three numbers:"
read a
read b
read c

function getComputation() {
	resultExpr1=$(($a+$(($b*$c))))
	resultExpr2=$(($(($a*$b))+$c))
	resultExpr3=$(($c+$(($a/$b))))
	resultExpr4=$(($(($a%$b))+$c))
	echo -e "Result of:\n1 is $resultExpr1\n2 is $resultExpr2\n3 is $resultExpr3\n4 is $resultExpr4"
}

function storeToDictionry() {
	exprDict[expression1]=$resultExpr1
	exprDict[expression2]=$resultExpr2
	exprDict[expression3]=$resultExpr3
	exprDict[expression4]=$resultExpr4
	echo "Results of ${!exprDict[*]} are:"${exprDict[*]}
}

function dictionryToArray() {
	convertedArray=("${exprDict[*]}")
	echo "Converted Array:" ${convertedArray[*]}
}

function getDescendingAscending() {
	descending=($(echo ${convertedArray[*]}| tr " " "\n"  | sort -rn))
	ascending=($(echo ${convertedArray[*]}| tr " " "\n"  | sort -n))
	echo -e "Descending result value: ${descending[*]}\nAscending result Value:${ascending[*]}"
}

function run() {
getComputation
storeToDictionry
dictionryToArray
getDescendingAscending
}
run

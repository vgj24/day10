#!/bin/bash 

read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c

n=0

declare -A expr

expr[0]=$(($a+$b*$c))

expr[1]=$(($c+$a/$b))

expr[2]=$(($a%$b+$c))

expr[3]=$(($a*$b+$c))

echo "read vlus to array from dictonary ${expr[@]}"

array=( [0]=${expr[0]} [1]=${expr[1]} [2]=${expr[2]} [3]=${expr[3]} )

for ((i=0;i<=${#array[@]};i++))
do
	for (( j=$(($i+1)); j<${#array[@]}; j++))
		do
			if [[ ${array[i]} < ${array[j]} ]]
			then
				var=${array[i]}
				array[$i]=${array[j]}
				array[$j]=$var
			fi
		done
done
echo "result of expression values in Decending order : ${array[@]} "

for ((i=0;i<=${#array[@]};i++))
do
        for (( j=$(($i+1)); j<${#array[@]}; j++))
                do
                        if [[ ${array[i]} > ${array[j]} ]]
                        then
                                var=${array[i]}
                                array[$i]=${array[j]}
                                array[$j]=$var
                        fi
                done
done
echo "result of expression values in Asceding order : ${array[@]}"

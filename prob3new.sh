#!/bin/bash 


one=1
fourty=40
flag=0
zero=0
count=0
cond1=0
cond2=0
cond3=0
cond4=0
for((i=1;i<=$fourty;i++))
do
	coinflip1=$((RANDOM%2))
	coinflip2=$((RANDOM%2))
	
                if [[ $coinflip1 -eq $one && $coinflip2 -eq $one ]]
                then
                flag1=1
		flag2=1
		echo "HH"
		((cond1++))

		elif [[ $coinflip1 -eq $one && $coinflip2 -eq $zero ]]
		
		then
		flag1=1
		flag2=0
		echo "HT"
		((cond2++))
		
		elif [[ $coinflip1 -eq $zero && $coinflip2 -eq $one ]]
		then
		flag1=0
		flag2=1
		echo "TH"
		((cond3++))

		elif [[ $coinflip1 -eq $zero && $cionflip2 -eq $zero ]]
		then		
		flag1=0
		flag2=0                
		echo "TT"
		((cond4++))
		else
			false=0
		fi
done
echo " HH :$cond1"
echo "HT : $cond2"
echo "TH : $cond3"
echo "TT : $cond4"

if [ $cond1 -gt $cond2 ]
then
	max=$cond1
	min=$cond2
else 
	max=$cond2
	min=$cond1
fi

if [ $cond3 -gt $cond4 ]
then
	max1=$cond3
	min1=$cond4
else
	max1=$cond4
	min1=$cond3
fi

if [ $max -gt $max1 ]
then 
	max=$max
else
	max=$max1
fi

if [ $min -gt $min1 ]
then
	min=$min
else
	min=$min1
fi
echo "maximum coinflips are :$max"
echo "minimum coinflips are : $min"

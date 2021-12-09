#!/bin/bash


one=1
zero=0
fourty=40
level=21
#coinflip=$((RANDOM%2))
flag=1
count=0
h=1
t=1
diff=0
while [[ $count -ne $fourty ]]
do
        ((count++))
        coinflip=$((RANDOM%2))
        if [ $coinflip -eq $one ]
        then
                flag=1
		((h++))
        else
                flag=0
                ((t++))
fi
done

echo "head count $h"
echo "tail count $t"
if [ $h -gt $level ]
then
        echo "head count reached to level 21 "
elif [ $t -gt $level ]
then
        echo "tail count is reached to level 21"
else
        echo "something wrong"
fi

if [ $h -eq $t ]
then
	echo "its a tie"
elif [ $h -gt $t ]
then
	diff=$(($h - $t))
	echo "head wins on tail by $diff difference"
else
	diff=$(($t - $h))
	echo "tail wins on head bt $diff difference"
fi

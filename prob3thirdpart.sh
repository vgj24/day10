one=1
hund=100
flag=0
zero=0
count=0
cond1=0
cond2=0
cond3=0
cond4=0
cond5=0
cond6=0
cond7=0
cond8=0

for((i=1;i<=$hund;i++))
do
        coinflip1=$((RANDOM%2))
        coinflip2=$((RANDOM%2))
	coinflip3=$((RANDOM%2))
                if [[ $coinflip1 -eq $one && $coinflip2 -eq $one && $coinflip3 -eq $one ]]
                then
                flag1=1
                flag2=1
		flag3=1
                echo "HHH"
                ((cond1++))
                
  		elif [[ $coinflip1 -eq $one && $coinflip2 -eq $zero && $coinflip3 -eq $zero ]]
                then
                flag1=1
                flag2=0
                flag3=0
		echo "HTT"
                ((cond2++))

                elif [[ $coinflip1 -eq $zero && $coinflip2 -eq $one  && $coinflip3 -eq $one ]]
                then
                flag1=0
                flag2=1
		flag3=1
                echo "THH"
                ((cond3++))

                elif [[ $coinflip1 -eq $zero && $coinflip2 -eq $zero && $coinflip3 -eq $one ]]
                then
                flag1=0
                flag2=0
		flag3=1
                echo "TTH"
    		((cond4++))
		
		elif [[ $coinflip1 -eq $zero && $coinflip -eq $zero && $coinflip3 -eq $zero ]]
		then
		flag1=0
		flag2=0
		flag3=0
		echo "TTT"
		((cond5++))

		elif [[ $coinflip1 -eq $one && $coinflip2 -eq $one && $coinflip3 -eq $zero ]]
		then
		flag1=1
		flag2=1
		flag3=1
		echo "HHT"
		((cond6++))

		elif [[ $coinflip1 -eq $zero && $coinflip2 -eq $one && $coinflip3 -eq $zero ]]
		then
		flag1=0
		flag2=1
		flag3=0
		echo "THT"
		((cond7++))

		elif [[ $coinflip1 -eq $one && $coinflip2 -eq $zero && $coinflip3 -eq $one ]]
		then
		flag1=1
		flag2=0
		flag3=1
		echo "HTH"
		((cond8++))

                else
                        false=0
                fi
done
echo "HHH : $cond1"
echo "HTT : $cond2"
echo "THH : $cond3"
echo "TTH : $cond4"
echo "TTT : $cond5"
echo "HHT : $cond6"
echo "THT : $cond7"
echo "HTH : $cond8"

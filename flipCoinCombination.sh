#!/bin/bash -x

declare -A DoubleDice
declare -A PercentDouble
hhh=0
hth=0
thh=0
hht=0
ttt=0
tth=0
tht=0
htt=0
for ((count=0; count<20; count++))
do
	result=$((RANDOM % 8))
	if [ $result -eq 0 ]
	then
		hhh=$(($hhh+1))
	elif [ $result -eq 1 ]
	then
		hth=$(($hth+1))
	elif [ $result -eq 2 ]
	then
		thh=$(($thh+1))
	elif [ $result -eq 3 ]
	then
		hht=$(($hht+1))
	elif [ $result -eq 4 ]
   then
      ttt=$(($ttt+1))
	 elif [ $result -eq 5 ]
   then
      tth=$(($tth+1))
	 elif [ $result -eq 6 ]
   then
      tht=$(($tht+1))
	 elif [ $result -eq 7 ]
   then
      htt=$(($htt+1))
	fi
done

DoubleDict[HHH]=$hhh
DoubleDict[TTT]=$ttt
DoubleDict[HTH]=$hth
DoubleDict[THH]=$thh
DoubleDict[HHT]=$hht
DoubleDict[TTH]=$tth
DoubleDict[THT]=$tht
DoubleDict[HTT]=$htt



for i in ${!DoubleDict[@]};
do
	PercentDouble[$i]=$((${DoubleDict[$i]} * 100 / 20))
	echo $i" percentage: "${DoubleDict[$i]}
done
echo ${PercentDouble[@]}


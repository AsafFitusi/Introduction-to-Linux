#!/bin/bash
read -p "Give me positive numbers": NUM1
if [ $NUM1 -lt 0 ]
then 
   echo "$NUM1 is negitive"
   read -p "Give me positive numbers": NUM1
fi

read -p "Give me $NUM1 numbers:" -a ArrayNum
sum=0
max=${ArrayNum[0]}
for NUM in "${ArrayNum[@]}"; do
  sum=$((sum + NUM))
  if (( $NUM > $max )); then
    max=$NUM 
  fi
done
  
echo "The total sum is: $sum"
echo "the max num is: $max"




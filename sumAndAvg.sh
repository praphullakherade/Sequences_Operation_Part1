#!/bin/bash -x
sum=0;
average=0;
for ((i=0; i<=4; i++))
do
   num=$((RANDOM % 100))
   sum=$((sum + $num))
   echo=$num;
done
average=`expr $sum | awk '{average=$1/5} {print average}'`
echo="sum:"$sum;
echo="average:"$average;

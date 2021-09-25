#!/bin/bash -x
MAX=0;
MIN=1000;
for((i=0; i<=5; i++))
do 
     digit=$((RANDOM % 1000))
     echo=$digit
     if [ $digit -ge $MAX ]
     then
        MAX=$digit;
     fi
     if [ $digit -le $MIN ]
     then
        MIN=$digit;
     fi
done
echo="Max Number:"$MAX
echo="Min Number:"$MIN

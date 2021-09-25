#!/bin/bash -x

FEET_TO_INCH=1
FEET_TO_METER=2
INCH_TO_FEET=3
METER_TO_FEET=4
echo "Enter 1 for feet to inch"
echo "Enter 2 for feet to meter"
echo "Enter 3 for inch to feet"
echo "Enter 4 for meter to feet"
read num
case $num in
       $FEET_TO_INCH)
          read -p "Enter value in feet:" feet
          inch=$((12*$feet))
          echo $inch "inch"
          ;;
       $FEET_TO_METER)
          read -p "Enter value in feet:" feet
          meter=`expr $feet | awk '{meter=$1*0.3048}{print meter}'`
          echo $meter "meter"
          ;;
       $INCH_TO_FEET)
          read -p "Enter value in inch:" inch
          feet=`expr $inch | awk '{feet=$1*0.0833333}{print feet}'`
          echo $feet "feet"
          ;;
       $METER_TO_FEET)
          read -p "Enter value in meter:" meter
          c=3.28084
          feet=`expr $meter | awk '{feet=$1*3.28084}{print feet}'`
          echo $feet "feet"
          ;;
       *)
          echo "invalid input"
esac

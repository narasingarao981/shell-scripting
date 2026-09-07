#!/bin/bash

sum=$1

if [ $sum -eq 10 ]
then
   echo "number is matching, we are good"
elif [ $sum -gt 10 ]
then
   echo " number is greater than expected"
else
   echo " number is less than expected"
fi


# -lt for less than
# -ne for not equals
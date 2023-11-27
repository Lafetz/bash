#!/bin/bash
echo wellcome to the guessing game!
answer=true
random=$(( ( RANDOM % 10 )  + 1 ))
while [ $answer ]
do
echo guess the number from 1 to 10
read guess
if [ $guess -eq $random ];then
    echo correct
    break
else 
   echo incorrect guess again
fi
done

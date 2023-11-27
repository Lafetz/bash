#!/bin/bash
echo wellcome to the guessing game!
echo enter you name
read name
answer=true
random=$(( ( RANDOM % 10 )  + 1 ))
total_tries=0
echo guess the number from 1 to 10
while [ $answer ]
read guess
do
if [ $guess -eq $random ];then
    echo correct
    echo $name  $total_tries >> scores.txt
    break
else 
   echo incorrect guess again
fi
done

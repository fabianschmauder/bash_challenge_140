#!/bin/bash

current_date=`date +"%Y-%m-%d"`
directory_name=$USER-$current_date
echo "Create directory $directory_name"
mkdir $directory_name

counter=0

while [ $counter -lt 25 ] 
do
    filecounter=$((counter + 1))
    touch "$directory_name/$filecounter"
    ((counter++))
done
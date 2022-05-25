#!/bin/bash

current_date=`date +"%Y-%m-%d"`
directory_name=$USER-$current_date
echo "Create directory $directory_name"
mkdir $directory_name

counter=0
cd $directory_name
start_counter=`ls | sed "s/$USER//" | sort -rn | head -n 1`

while [ $counter -lt 25 ] 
do
    filecounter=$((start_counter + counter + 1))
    touch "$USER$filecounter"
    ((counter++))
done
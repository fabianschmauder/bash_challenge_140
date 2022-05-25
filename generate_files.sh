#!/bin/bash

current_date=`date +"%Y-%m-%d"`
directory_name=$USER-$current_date
echo "Create directory $directory_name"
mkdir $directory_name
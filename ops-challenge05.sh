#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Spencer Mitchell
# Date of latest revision: 2/710/23
# Purpose: Write a script that displays running processes,
# asks the user for a PID, then kills the process with that PID.
# Use a loop in your script.

runningprocesses(){
    ps aux 
}

runningprocesses

killprocess(){
    read -p "What process to kill" pid
    kill $pid 
}

while true; do
echo "1. kill this process "
echo "2. quit"
read -p "Please choose" choice 

case $choice in
1) killprocess;;
2) break;;
esac 



done


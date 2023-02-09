#!bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Spencer Mitchell
# Date of latest revision: 2/9/23
# Purpose: Write a script that prints the login history of users to include one variable and function

# Main

var1=$(last)

printlog(){
    echo "$var1"
}
printlog

# End
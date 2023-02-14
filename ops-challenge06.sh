#!/bin/bash

#Script: Ops 201 Challenge 6
#Author: Spencer Mitchell
#Date of latest revision: 2/13/23
#Purpose: Write a script that detects if a file or directory exist, then creates it if does 
#not exist. 
# It must use at least one array, one loop nad one conditional.

# This script was made by using CHATGPT. I could not figure out how to add an array
# into the loop. I do not understand this, yet. I had chatgpt explain each line to me. 

# Main

# An array of file/directory names
files=("file1" "dir1" "file2" "dir2")

# Loop through the array
for file in ${files[@]}
do
  # Check if the file/directory exists
  if [ ! -e $file ]; then
    # Create the file/directory if it does not exist
    if [ ${file: -3} == "dir" ]; then
      mkdir $file
    else
      touch $file
    fi
  fi
done

# End
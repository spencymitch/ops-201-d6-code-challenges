#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Spencer Mitchell
# Date of latest revision: 2/9/23
# Purpose: Create four directories using the script.
# Load each directory path into an array.
# create a new .txt file within each directory by referencing the directory 
# with array indices, not the literal directory path.

# Create four directories using the script.

mkdir dir1  dir2 dir3 dir4

# Load each directory path into an array.

arr=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

# create a new .txt file within each directory by referencing the directory

touch "${arr[0]}file1.txt"
touch "${arr[1]}file1.txt"
touch "${arr[2]}file1.txt"
touch "${arr[3]}file1.txt"


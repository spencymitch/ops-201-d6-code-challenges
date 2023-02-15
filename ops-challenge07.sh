#!/bin/bash


# Script: Ops 201 Challenge 7
# Author: Spencer Mitchell
# Date of latest revision: 2/14/23
# Purpose: Use lshw to display information about the CPU, Ram, Display adapter,
# and Network adapter.

# Used resources from Class/Demo. chatgpt, and peer Marco Aliaga

# Main

echo "Computer"
sudo lshw | grep -m1 'product:' 

echo "CPU"
sudo lshw | grep -A 5 'cpu' | grep -E 'product:|vendor:|physical id:|bus info:|width:' | grep -v 'bus info:'

echo "RAM"
sudo lshw | grep -A 6 'memory' | grep -E 'description:|physical id:|size:'

echo "Display"
sudo lshw | grep -A 14 'display' | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'

echo "Network Adapter"
sudo lshw | grep -A 20 'network' | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:'
# End


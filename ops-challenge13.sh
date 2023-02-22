#!bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Spencer Mitchell
# Date of latest revision: 2/22/23
# Purpose:Create a script that asks a user to type a domain, then displays information about the typed domain.

# Define domain_info function

function domain_info() {
    echo "WHOIS information for $domain:"
    whois $domain
    echo ""
    echo "DNS information for $domain:"
    dig $domain
    echo ""
    echo "Host information for $domain:"
    host $domain
    echo ""
    echo "NSLOOKUP information for $domain:"
    nslookup $domain
    echo ""
}

# ask what domain to store in variable
read -p "enter domain" domain

domain_info > "/home/spencer/info.txt"
#!/bin/bash

output_file = "/path/to/file.txt"

while read name; do
    grep -rnw '/var/log/dpkg.log' -e '$name' | awk '$6 ~ /^ps/ {print $1 " has a process going to " $6}' >> "$output_file"
    
done < names.txt

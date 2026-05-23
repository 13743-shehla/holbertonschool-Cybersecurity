#!/bin/bash
echo "$1" | awk -F'.' -v mask="$2" 'BEGIN{split(mask,m,".")}{printf "%d.%d.%d.%d\n", or($1,xor(m[1],255)), or($2,xor(m[2],255)), or($3,xor(m[3],255)), or($4,xor(m[4],255))}'

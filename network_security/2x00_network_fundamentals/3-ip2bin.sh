#!/bin/bash
IFS='.' read -r o1 o2 o3 o4 <<< "$1"
b1=$(printf "%08d" $(echo "obase=2; $o1" | bc))
printf "%s.%08d.%08d.%08d\n" "$b1" $(echo "obase=2; $o2" | bc) $(echo "obase=2; $o3" | bc) $(echo "obase=2; $o4" | bc)

#!/bin/bash
val=$(( 0xFFFFFFFF ^ (1 << (32 - $1)) - 1 ))
printf "%d.%d.%d.%d\n" $(( (val >> 24) & 255 )) $(( (val >> 16) & 255 )) $(( (val >> 8) & 255 )) $(( val & 255 ))

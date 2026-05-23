#!/bin/bash
cdr=$1
printf "%d.%d.%d.%d\n" "$(( (0xFFFFFFFF << (32 - cdr)) >> 24 & 0xFF ))" "$(( (0xFFFFFFFF << (32 - cdr)) >> 16 & 0xFF ))" "$(( (0xFFFFFFFF << (32 - cdr)) >> 8 & 0xFF ))" "$(( (0xFFFFFFFF << (32 - cdr)) & 0xFF ))"

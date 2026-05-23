#!/bin/bash
ipcalc -m 0.0.0.0/$1 | cut -d= -f2

#!/bin/bash
ip route | grep -oP 'default via \K[\d.]+'

#!/bin/bash

# Author: Devansh
# Script: System Information Report

echo "======================================"
echo "       SYSTEM INFORMATION REPORT"
echo "======================================"
echo "Name: Devansh"
echo "Roll Number: YOUR_ROLL_NUMBER"
echo "Date: $(date)"
echo ""

echo "----- CPU INFORMATION -----"
lscpu | grep "Model name" | head -1
echo "CPU Cores: $(nproc)"
echo ""

echo "----- MEMORY INFORMATION -----"
free -h | awk 'NR==2 {
    print "Total Memory: " $2
    print "Used Memory: " $3
}'
echo ""

echo "----- TOP 3 PROCESSES BY CPU -----"
ps aux --sort=-%cpu | head -4
echo ""

echo "Report generated successfully."
echo "======================================"

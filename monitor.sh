#!/bin/bash

echo "================================="
echo "   Linux Server Monitoring Tool  "
echo "================================="

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu"

echo ""
echo "Memory Usage:"
free -m

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6

echo ""
echo "Running Services:"
systemctl list-units --type=service --state=running | head

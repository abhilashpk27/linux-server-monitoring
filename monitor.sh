#!/bin/bash

LOGFILE="system-report.log"

echo "=================================" >> $LOGFILE
echo "Linux Server Monitoring Report" >> $LOGFILE
echo "Date: $(date)" >> $LOGFILE
echo "=================================" >> $LOGFILE

echo "CPU Usage:" >> $LOGFILE
top -bn1 | grep "Cpu" >> $LOGFILE

echo "" >> $LOGFILE
echo "Memory Usage:" >> $LOGFILE
free -m >> $LOGFILE

echo "" >> $LOGFILE
echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Top Processes:" >> $LOGFILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6 >> $LOGFILE

echo "---------------------------------" >> $LOGFILE

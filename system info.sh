#!/bin/bash

###############################################################################
# Script Name : system_info.sh
# Description : Collect Linux system information
# Author      : Your Name
# Version     : 1.0
###############################################################################

REPORT="system_report_$(date +%Y%m%d_%H%M%S).txt"

echo "=====================================================" > $REPORT
echo "          LINUX SYSTEM INFORMATION REPORT            " >> $REPORT
echo "=====================================================" >> $REPORT
echo "Generated On : $(date)" >> $REPORT
echo "" >> $REPORT

###############################
# Host Information
###############################
echo "========== HOST INFORMATION ==========" >> $REPORT
hostname >> $REPORT
hostnamectl >> $REPORT 2>/dev/null
echo "" >> $REPORT

###############################
# Operating System
###############################
echo "========== OPERATING SYSTEM ==========" >> $REPORT
cat /etc/os-release >> $REPORT
echo "" >> $REPORT

###############################
# Kernel Information
###############################
echo "========== KERNEL ==========" >> $REPORT
uname -a >> $REPORT
echo "" >> $REPORT

###############################
# Uptime
###############################
echo "========== SYSTEM UPTIME ==========" >> $REPORT
uptime >> $REPORT
echo "" >> $REPORT

###############################
# CPU Details
###############################
echo "========== CPU INFORMATION ==========" >> $REPORT
lscpu >> $REPORT
echo "" >> $REPORT

###############################
# Memory Details
###############################
echo "========== MEMORY USAGE ==========" >> $REPORT
free -h >> $REPORT
echo "" >> $REPORT

###############################
# Disk Usage
###############################
echo "========== DISK USAGE ==========" >> $REPORT
df -h >> $REPORT
echo "" >> $REPORT

###############################
# Inode Usage
###############################
echo "========== INODE USAGE ==========" >> $REPORT
df -i >> $REPORT
echo "" >> $REPORT

###############################
# Mounted File Systems
###############################
echo "========== MOUNTED FILESYSTEMS ==========" >> $REPORT
mount >> $REPORT
echo "" >> $REPORT

###############################
# Logged In Users
###############################
echo "========== LOGGED IN USERS ==========" >> $REPORT
who >> $REPORT
echo "" >> $REPORT

###############################
# Last Logins
###############################
echo "========== LAST LOGIN ==========" >> $REPORT
last | head -10 >> $REPORT
echo "" >> $REPORT

###############################
# Top CPU Processes
###############################
echo "========== TOP CPU PROCESSES ==========" >> $REPORT
ps -eo pid,user,%cpu,%mem,cmd --sort=-%cpu | head -11 >> $REPORT
echo "" >> $REPORT

###############################
# Top Memory Processes
###############################
echo "========== TOP MEMORY PROCESSES ==========" >> $REPORT
ps -eo pid,user,%cpu,%mem,cmd --sort=-%mem | head -11 >> $REPORT
echo "" >> $REPORT

###############################
# Running Services
###############################
echo "========== RUNNING SERVICES ==========" >> $REPORT
systemctl list-units --type=service --state=running >> $REPORT 2>/dev/null
echo "" >> $REPORT

###############################
# Failed Services
###############################
echo "========== FAILED SERVICES ==========" >> $REPORT
systemctl --failed >> $REPORT 2>/dev/null
echo "" >> $REPORT

###############################
# Network Interfaces
###############################
echo "========== NETWORK INTERFACES ==========" >> $REPORT
ip addr show >> $REPORT
echo "" >> $REPORT

###############################
# Routing Table
###############################
echo "========== ROUTING TABLE ==========" >> $REPORT
ip route >> $REPORT
echo "" >> $REPORT

###############################
# Listening Ports
###############################
echo "========== LISTENING PORTS ==========" >> $REPORT
ss -tuln >> $REPORT
echo "" >> $REPORT

###############################
# Filesystem Usage
###############################
echo "========== FILESYSTEM ==========" >> $REPORT
lsblk >> $REPORT
echo "" >> $REPORT

###############################
# Environment Variables
###############################
echo "========== ENVIRONMENT VARIABLES ==========" >> $REPORT
printenv >> $REPORT
echo "" >> $REPORT

###############################
# Recent System Logs
###############################
echo "========== RECENT SYSTEM LOGS ==========" >> $REPORT
journalctl -n 20 --no-pager 2>/dev/null >> $REPORT
echo "" >> $REPORT

###############################
# Load Average
###############################
echo "========== LOAD AVERAGE ==========" >> $REPORT
cat /proc/loadavg >> $REPORT
echo "" >> $REPORT

echo "=====================================================" >> $REPORT
echo "Report generated successfully."
echo "Output File: $REPORT"
echo "====================================================="

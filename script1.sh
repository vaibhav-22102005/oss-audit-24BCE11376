#!/bin/bash
# Script 1: System Identity Report
# Author: Vaibhav | Course: Open Source Software
 
STUDENT_NAME="Vaibhav"
SOFTWARE_CHOICE="Firefox"
 
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)
 
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU GPL (Linux Kernel)"
#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software
# --- Variables ---
STUDENT_NAME="[Aryan Kumar]" # Fill in your name
SOFTWARE_CHOICE="Python" # Chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# New additions
DISTRO_NAME=$(cat /etc/os-release | grep -w "PRETTY_NAME" | cut -d= -f2 | tr -d '"' 2>/dev/null || echo "Linux")
CURRENT_DATE=$(date '+%Y-%m-%d %H:%M:%S')
LICENSE_MSG="The underlying OS components operate primarily under GNU GPL and other FOSS licenses."

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel        : $KERNEL"
echo "User          : $USER_NAME"
echo "Uptime        : $UPTIME"
echo "Distribution  : $DISTRO_NAME"
echo "Current Date  : $CURRENT_DATE"
echo "License Info  : $LICENSE_MSG"

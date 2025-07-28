#!/bin/bash

# getinfo.sh - Linux System Information Script
# This script retrieves CPU, memory, disk, and other information of a Linux server.

# Function: Retrieve CPU information
cpu_num=$(grep -c '^processor' /proc/cpuinfo)

# Function: Retrieve total memory size (in GB)
memory_total=$(free -g | awk '/^Mem:/ {print $2}')

# Function: Retrieve available memory size (in MB)
memory_free=$(free -m | awk '/^Mem:/ {print $4}')

# Function: Retrieve total disk size of the root filesystem (in GB)
disk_size=$(df -h / | awk '/\// {print $2}')

# Function: Retrieve system bit
system_bit=$(getconf LONG_BIT)

# Function: Retrieve the number of currently running processes
process=$(ps -ef | wc -l)

# Function: Retrieve the number of installed software packages
software_num=$(dpkg-query -f '${binary:Package}\n' -W | wc -l)

# Function: Retrieve the IP address of eth0
ip=$(ip addr show eth0 | awk '/inet / {print $2}' | sed 's|/.*||')

# Output information
echo "cpu num: $cpu_num"
echo "memory total: $memory_total G"
echo "memory free: $memory_free M"
echo "disk size: $disk_size"
echo "system bit: $system_bit"
echo "process: $((process - 1))"
echo "software num: $software_num"
echo "ip: $ip"

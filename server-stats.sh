#!/bin/bash

# Function to display total CPU usage
function cpu_usage() {
    echo -e "\n--- CPU Usage ---"
    # CPU usage in percentage (with idle time subtracted from 100)
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "Total CPU usage: " 100 - $1 "%"}'
}

# Function to display total memory usage (Free vs Used)
function memory_usage() {
    echo -e "\n--- Memory Usage ---"
    # Memory usage in MB/GB
    free -h | grep Mem | awk '{print "Total Memory: " $2 " | Used: " $3 " | Free: " $4 " | Memory Usage: " $3/$2 * 100 "%"}'
}

# Function to display total disk usage (Free vs Used)
function disk_usage() {
    echo -e "\n--- Disk Usage ---"
    # Disk usage on the root partition (/) in human-readable format
    df -h | grep '^/dev/' | awk '{print $1 " | Total: " $2 " | Used: " $3 " | Free: " $4 " | Usage: " $5}'
}

# Function to display top 5 processes by CPU usage
function top_cpu_processes() {
    echo -e "\n--- Top 5 Processes by CPU Usage ---"
    # Top 5 processes by CPU usage
    ps aux --sort=-%cpu | awk 'NR<=6 {print $0}'
}

# Function to display top 5 processes by memory usage
function top_memory_processes() {
    echo -e "\n--- Top 5 Processes by Memory Usage ---"
    # Top 5 processes by memory usage
    ps aux --sort=-%mem | awk 'NR<=6 {print $0}'
}

# Optional: Display additional server stats
function additional_stats() {
    echo -e "\n--- Additional Server Stats ---"
    
    # OS Version
    echo "OS Version:"
    uname -a

    # Uptime
    echo -e "\nUptime:"
    uptime
    
    # Load average
    echo -e "\nLoad Average:"
    uptime | awk -F'load average:' '{ print $2 }'
    
    # Logged in users
    echo -e "\nLogged in Users:"
    who
    
    # Failed login attempts (from /var/log/auth.log)
    echo -e "\nFailed Login Attempts:"
    grep "Failed password" /var/log/auth.log | wc -l
}

# Main function that calls the individual functions
function main() {
    cpu_usage
    memory_usage
    disk_usage
    top_cpu_processes
    top_memory_processes
    additional_stats
}

# Run the main function
main

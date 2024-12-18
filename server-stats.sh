#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "CPU Usage: " 100 - $1 "%"}'
    echo ""
}

# Function to get memory usage
get_memory_usage() {
    echo "Memory Usage:"
    free -m | awk 'NR==2{printf "Used: %s MB (%.2f%%), Free: %s MB\n", $3, ($3/$2)*100, $4}'
    echo ""
}

# Function to get disk usage
get_disk_usage() {
    echo "Disk Usage:"
    df -h | grep '^/dev' | awk '{print $1, $3, $4, $5}'
    echo ""
}

# Function to get top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "Top 5 processes by CPU usage:"
    ps aux --sort=-%cpu | head -n 6
    echo ""
}

# Function to get top 5 processes by memory usage
get_top_memory_processes() {
    echo "Top 5 processes by memory usage:"
    ps aux --sort=-%mem | head -n 6
    echo ""
}

# Optional: Additional Stats
get_additional_stats() {
    echo "Additional System Stats:"

    # OS version
    echo "OS Version: $(lsb_release -d | awk -F'\t' '{print $2}')"

    # Uptime
    echo "Uptime: $(uptime -p)"

    # Load average
    echo "Load Average: $(uptime | awk -F'load average:' '{ print $2 }')"

    # Logged-in users
    echo "Logged-in Users:"
    who

    # Failed login attempts (last 24 hours)
    echo "Failed Login Attempts (Last 24 Hours):"
    journalctl -u sshd | grep "Failed password" | grep "$(date --date='yesterday' +'%b %d')" | wc -l

    echo ""
}

# Main Function
main() {
    get_cpu_usage
    get_memory_usage
    get_disk_usage
    get_top_cpu_processes
    get_top_memory_processes
    get_additional_stats
}

# Run the script
main

# Server Performance Stats

This project provides a simple bash script to analyze basic server performance stats. It gathers important system information such as CPU usage, memory usage, disk usage, and the top processes by CPU and memory. The script also includes optional statistics like the OS version, uptime, load averages, and more.

## Features

- Total CPU usage
- Total memory usage (Free vs Used, including percentage)
- Total disk usage (Free vs Used, including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- Optional: OS version, uptime, load averages, logged-in users, and failed login attempts

## Prerequisites

This script is intended to be run on a Linux server and requires the following tools:
- `top`
- `ps`
- `free`
- `df`
- `who`
- `journalctl` (for fetching failed login attempts)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/server-performance-stats.git
   cd server-performance-stats
   
2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```

## Usage

Run the script with the following command:
```bash
./server-stats.sh
```

This will output the current CPU, memory, and disk usage and the top processes by CPU and memory.

### Example Output:

```
CPU Usage:
CPU Usage: 12.5%

Memory Usage:
Used: 2048 MB (60.00%), Free: 1360 MB

Disk Usage:
Filesystem     Size  Used Avail Use% Mounted on
/dev/sda1      100G   40G   60G  40% /

Top 5 processes by CPU usage:
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  5.0  0.1  17168  1420 ?        Ss   10:00   0:00 /sbin/init
...

Top 5 processes by memory usage:
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.1  3.5  17168  1420 ?        Ss   10:00   0:00 /sbin/init
...

Additional System Stats:
OS Version: Ubuntu 20.04 LTS
Uptime: up 3 days, 2 hours, 13 minutes
Load Average: 0.15, 0.20, 0.18
Logged-in Users:
user1     tty1         2024-12-18 09:00 (:0)
Failed Login Attempts (Last 24 Hours): 0
```

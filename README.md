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

![Output](https://github.com/user-attachments/assets/91974679-859d-4598-9ddc-542afb095628)

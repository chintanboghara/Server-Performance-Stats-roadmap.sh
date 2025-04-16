
# Server Performance Stats

This project offers a straightforward bash script designed to help you quickly assess your server's health. It collects essential performance metrics like CPU, memory, and disk usage, along with insights into the most resource-intensive processes. Additionally, it provides details such as the OS version, system uptime, load averages, currently logged-in users, and recent failed login attempts.

## Features

- **CPU Usage:** Displays the total CPU usage percentage.
- **Memory Usage:** Shows total, used, and free memory, along with the usage percentage.
- **Disk Usage:** Provides total, used, and free disk space, including the usage percentage.
- **Top Processes:** Lists the top 5 processes consuming the most CPU and memory.
- **System Information:** Includes OS version, system uptime, load averages, currently logged-in users, and recent failed login attempts.

## Prerequisites

This script is intended to be run on a Linux server and requires the following tools:
- `top`
- `ps`
- `free`
- `df`
- `who`
- `journalctl` (for fetching failed login attempts)

Ensure these tools are installed on your system. Most Linux distributions include them by default.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/chintanboghara/server-performance-stats.git
   cd server-performance-stats
   ```

2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```

## Usage

Run the script with the following command:
```bash
./server-stats.sh
```

This will output the current server performance statistics, including CPU, memory, and disk usage, top processes, and additional system information.

![Output](https://github.com/user-attachments/assets/91974679-859d-4598-9ddc-542afb095628)

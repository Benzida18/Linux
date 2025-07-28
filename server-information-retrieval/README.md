# Server Information Retrieval

This mini project contains a shell script (`getinfo.sh`) that retrieves and displays basic server/system information on a Unix-based machine.

## What It Does

When executed, the script prints out:

- Hostname
- Current user
- Current date and time
- Uptime
- Kernel version
- Memory usage
- Disk usage
- Logged-in users

## Commands Used

- `echo`: for printing text
- `whoami`: current logged-in user
- `hostname`: displays the system's hostname
- `date`: current system date and time
- `uptime`: system uptime
- `uname -r`: kernel version
- `free -h`: memory usage (use `vm_stat` on macOS)
- `df -h`: disk space usage
- `who`: list of logged-in users

## How to Run

```bash
sh getinfo.sh

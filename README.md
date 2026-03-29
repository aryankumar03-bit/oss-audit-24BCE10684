# Open Source Software Audit Project

**Student Name:** [Aryan Kumar]  
**Roll Number:** [24BCE10684]  
**Chosen Software:** Python

## Project Overview
This repository contains five shell scripts developed as part of the Open Source Software Audit capstone project. These scripts demonstrate practical Linux skills and automation corresponding to the philosophies of Free and Open Source Software (FOSS).

## Scripts Description

1. **`script1_system_identity.sh` (System Identity Report)**  
   Displays an interactive welcome screen that prints the current system's kernel version, logged-in user, uptime, Linux distribution, current date, and OS licensing details.

2. **`script2_package_inspector.sh` (FOSS Package Inspector)**  
   Checks if the chosen software (`python3`) is installed on the system, reports its version, and outputs a one-line philosophy note regarding its open-source impact.

3. **`script3_disk_auditor.sh` (Disk and Permission Auditor)**  
   Loops through a set of critical system directories (e.g., `/etc`, `/var/log`) to report their size and permissions. It also specifically audits the installation directory of Python (`/usr/lib/python3`).

4. **`script4_log_analyzer.sh` (Log File Analyzer)**  
   Reads a system log file (defaults to `/var/log/syslog`) to count occurrences of a specific keyword (defaults to "error") and outputs the last 5 matching lines. It includes a built-in interactive retry loop if the initially provided file does not exist or requires root privileges.

5. **`script5_manifesto_generator.sh` (Open Source Manifesto Generator)**  
   An interactive script that asks the user three questions about digital freedom and open-source tools. It then generates a personalized manifesto paragraph and saves it to a local text file.

## Dependencies
- A Linux environment (Ubuntu via WSL, Virtual Machine, or native installation).
- Standard GNU core utilities (`uname`, `uptime`, `date`, `whoami`, `ls`, `du`, `awk`, `grep`).
- **Debian/Ubuntu-specific:** The package inspector script uses `dpkg` to determine package installation status.

## How to Run on Linux

Follow these steps to execute the scripts in your Linux terminal:

1. **Clone this repository** (or navigate to the project directory in your terminal):
   ```bash
   cd /path/to/oss-audit-[rollnumber]
   ```

2. **Make the scripts executable**:  
   Before running a bash script for the first time, you must assign execute permissions to it using `chmod`:
   ```bash
   chmod +x script1_system_identity.sh
   chmod +x script2_package_inspector.sh
   chmod +x script3_disk_auditor.sh
   chmod +x script4_log_analyzer.sh
   chmod +x script5_manifesto_generator.sh
   ```

3. **Execute the scripts**:  
   Run each script using `./` followed by the filename:
   ```bash
   ./script1_system_identity.sh
   ./script2_package_inspector.sh
   ./script3_disk_auditor.sh
   ./script4_log_analyzer.sh
   ./script5_manifesto_generator.sh
   ```

> **Troubleshooting / Windows line endings**: If you edited or saved these files directly from Windows and transferred them to a Linux virtual machine or server, you might encounter `\r` carriage return errors. If this happens, run `dos2unix script1_system_identity.sh` to fix the line endings before execution.

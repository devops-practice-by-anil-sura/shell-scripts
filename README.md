# Linux System Information Collector

## Overview

The **Linux System Information Collector** is a Bash script that gathers detailed system information from a Linux machine and generates a timestamped report.

This project is useful for:

* Linux System Administration
* DevOps Automation
* System Health Monitoring
* Server Auditing
* GitHub Actions Integration
* Cron Job Scheduling

---

## Features

The script collects the following information:

* Hostname
* Operating System Details
* Kernel Version
* System Uptime
* CPU Information
* Memory Usage
* Disk Usage
* Mounted File Systems
* Inode Usage
* Logged-in Users
* Last Login History
* Top CPU-consuming Processes
* Top Memory-consuming Processes
* Running Services
* Failed Services
* Network Interfaces
* Routing Table
* Listening Ports
* Block Devices
* Environment Variables
* Recent System Logs
* System Load Average

---

## Project Structure

```text
linux-system-monitor/
│
├── scripts/
│   └── system_info.sh
│
├── reports/
│
├── README.md
│
└── .github/
    └── workflows/
        └── system-report.yml
```

---

## Prerequisites

* Linux Operating System
* Bash Shell
* `systemctl`
* `hostnamectl`
* `ip`
* `ss`
* `lscpu`
* `free`
* `df`
* `lsblk`
* `journalctl`

---

## Installation

Clone the repository:

```bash
git clone https://github.com/<organization-name>/<repository-name>.git
```

Navigate to the project directory:

```bash
cd <repository-name>
```

Grant execute permission to the script:

```bash
chmod +x scripts/system_info.sh
```

---

## Usage

Run the script:

```bash
./scripts/system_info.sh
```

A timestamped report will be generated in the current directory, for example:

```text
system_report_20260701_170000.txt
```

---

## Sample Output

```text
=====================================================
          LINUX SYSTEM INFORMATION REPORT
=====================================================

Host Information
----------------
Hostname : server01

Operating System
----------------
Ubuntu 24.04 LTS

Kernel
------
6.x.x-generic

Memory
------
Total : 8 GB
Used  : 3.1 GB
Free  : 4.2 GB

Disk Usage
----------
Filesystem      Size Used Avail Use%
/dev/sda1        50G  22G   26G  46%

Network
-------
IP Address : 192.168.1.100

Listening Ports
---------------
22
80
443
```

---

## Scheduling with Cron

To run the script every day at **5:00 PM**, add the following cron entry:

```cron
0 17 * * * /path/to/scripts/system_info.sh
```

Edit the crontab:

```bash
crontab -e
```

---

## GitHub Actions

The script can be integrated with GitHub Actions to execute automatically on a schedule or as part of a CI/CD workflow.

Example schedule:

```yaml
schedule:
  - cron: '0 17 * * *'
```

---

## Future Enhancements

* Upload reports to GitHub using the GitHub REST API
* Email system reports
* Slack or Microsoft Teams notifications
* Generate reports in JSON format
* Export metrics to Prometheus
* Push reports to cloud storage
* Add disk, memory, and CPU usage alerts
* Docker support
* Kubernetes support

---

## Contributing

Contributions are welcome.

1. Fork the repository.
2. Create a feature branch.
3. Commit your changes.
4. Push your branch.
5. Open a Pull Request.

---

## License

This project is licensed under the MIT License.

---

## Author

**Anil Sura**

GitHub: (https://github.com/devops-practice-by-anil-sura)


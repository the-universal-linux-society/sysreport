# sysreport
sysreport is a bash script designed to provide system information at a glance.

Just by running the script it offers insight into CPU data, disk space, temperature readings, network configuration, MAC addresses, firewall status, and system logs for error analysis.

### Features:
- CPU Usage:
  Displays CPU data, and statistics.
- Disk Space:
  Shows disk usage and available space
- Temperature:
  Retrieves temperature data, aiding in monitoring system health
- Network Configuration:
  Shows network interface information
- MAC Addresses:
  Lists MAC addresses for network interfaces
- Firewall Status:
  Checks the current status of the system firewall & alerts
- System Logs:
  Read through system logs, allowing for the detection and analysis of errors and anomalies

![report](https://github.com/the-universal-linux-society/sysreport/assets/161962528/937f5f9d-e70a-4381-bd8e-2c919264e04f)


  ### Usage:
1. Clone or download the script.
2. chmod +x report.sh
3. ./report.sh

### Dependencies: 
- lolcat
  
### distros
This script only works on debian, fedora, arch-linux based distro's due to a dependency file 'lolcat'.

Manually install before running the script, if you are using a different distro than the ones listed.


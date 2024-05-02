#!/bin/bash
# function to install lolcat on debian-based systems
install_lolcat_debian(){
	if ! dpkg -l | grep -q lolcat; then
		sudo apt update
		sudo apt install lolcat -y
	else
		echo "lolcat is already installed"
	fi
}
# function to install lolcat on fedora-based systems
install_lolcat_fedora(){
	if ! rpm -q lolcat &>/dev/null; then
		sudo dnf install lolcat -y
	else
		echo "lolcat is already installed"
fi
}
# function to install lolcat on arch-based systems
install_lolcat_arch(){
	if ! pacman -Qs lolcat &>/dev/null; then
		sudo pacman -Sy --noconfirm lolcat
	else
		echo "lolcat is already installed"
	fi
}
# check the distro and call the appropriate function
if [[ -f /etc/debian_version ]]; then
	install_lolcat_debian
elif [[ -f /etc/fedora-release ]]; then
	install_lolcat_fedora
elif [[ -f /etc/arch-release ]]; then
	install_lolcat_arch
else
	echo "Unsupported distro, please install lolcat manually"
fi

echo "-------------------------------------"
echo "The Universal Linux Society" | lolcat
echo "https://github.com/the-universal-linux-society"
echo "-------------------------------------"
echo "
 _______________
( SYSTEM REPORT )
 ---------------
   o
    o
        .--.
       |@_@ |
       |:_/ | " | lolcat
    echo ""
    sleep 3
# Check CPU and memory
echo "Checking CPU and memory..." | lolcat
sleep 3
echo "-------------------------------------"
echo "CPU Information:" | lolcat
lscpu
echo "-------------------------------------"
sleep 3
echo "Memory Information:" | lolcat
free -h
echo "-------------------------------------"
sleep 3
# Check disk usage 
echo "Checking disk usage..." | lolcat
echo "-------------------------------------"
df -h
echo "-------------------------------------"
sleep 3

# check network interfaces
echo "Checking network interfaces..." | lolcat
echo "-------------------------------------"
ip addr show
echo "-------------------------------------"
sleep 3 

# Check for IP address and MAC address
echo "Checking IP address and MAC address..." | lolcat
echo "-------------------------------------"
echo "IP Address:" | lolcat
hostname -I
echo "-------------------------------------"
sleep 3 
echo "MAC Address:" | lolcat
ip link show | awk '/ether/ {print $2}'
echo "-------------------------------------"
sleep 3

# Check top running processes
echo "Checking top running processes..." | lolcat
echo "-------------------------------------"
sleep 3
top -n 1
echo "-------------------------------------"
sleep 3

# Check firewall status
echo "Checking firewall status..." | lolcat
echo "-------------------------------------"
sleep 3
sudo ufw status
echo "-------------------------------------"
sleep 3

# Check important system reports
echo "Checking important system reports..." | lolcat
echo "-------------------------------------"
sleep 3
echo "dmesg Output:" | lolcat
sudo dmesg | tail -n 10
echo "-------------------------------------"
sleep 3


# Check for overheating
echo "Checking for overheating..." | lolcat
echo "-------------------------------------"
sleep 3
sensors
echo "-------------------------------------"
sleep 3

# Check system logs for any hardware-related errors
echo "Checking system logs for hardware errors..." | lolcat
echo "-------------------------------------"
sleep 3
sudo journalctl -p err -b
echo "-------------------------------------"
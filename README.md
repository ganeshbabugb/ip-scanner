# ip-scanner
This script will list all IPs in subnetwork.

## Screenshots

![Screenshot](/screenshort/ip-scanner.png?raw=true "ip-scanner")

## Description

The script uses arp -a or ip -o -f inet addr show to find the subnet.
<br />
Basically, $baseip is built using bash replacement macros in the second part of the script if no parameter is provided on the command line. Otherwise it will scan the provided subnet (style: 192.168.247 without the third dot last byte of the IP).

## Installation

```bash
  git clone https://github.com/ganeshbabugb/ip-scanner.git
```

Go to the project directory

```bash
  cd ip-scanner
```

Give permission to the script

```bash
  chmod +x ip-scanner.sh
```

Start the script

```bash
  bash ip-scanner.sh (or) bash ip-scanner.sh 192.168.247
```

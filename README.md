
# Network Monitoring  Tool ![](https://img.shields.io/github/last-commit/tanmayagrawal2000/network-monitoring-tool?style=for-the-badge) ![](https://img.shields.io/badge/-PHP-blue?style=for-the-badge) ![](https://img.shields.io/badge/-Apache2-red?style=for-the-badge) ![](https://img.shields.io/badge/-ShellScirpt-yellow?style=for-the-badge)
This tool tracks the on going packet in the network and displays them according to user chosen protocol and choices.




## Protcols tracked

- TCP
- UDP
- ARP

## Protcol Deatils

- Timestamp
- Source IP
- Destination IP
- Source Mac
- Destination Mac
- Source Port
- Destination Port
- Length



## Installation

First go to root directory and install apache2 and php.

```bash
  apt-get install git
  apt-get install apache2
  apt install php libapache2-mod-php php-mysql
```

    
## Configuration
```
   cd /var/www/html
   rm -r index.html
   git clone https://github.com/tanmayagrawal2000/network-monitoring-tool.git .
   bash config.sh
```


## Run

Go to browser and type `localhost/first.html`

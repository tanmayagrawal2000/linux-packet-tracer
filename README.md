
# Network Monitoring  Tool ![](https://img.shields.io/github/last-commit/tanmayagrawal2000/network-monitoring-tool?style=for-the-badge) ![](https://img.shields.io/badge/-PHP-blue?style=for-the-badge) ![](https://img.shields.io/badge/-Apache2-red?style=for-the-badge) ![](https://img.shields.io/badge/-ShellScirpt-yellow?style=for-the-badge)
This tool tracks the on going packet in the network and displays them according to user chosen protocol and choices.




## Protcols tracked

- TCP
- UDP
- ARP

## Protcol Details

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
   rm index.html
   git clone https://github.com/tanmayagrawal2000/network-monitoring-tool.git .
   bash config.sh
```


## Run

### Go to browser and type `localhost/first.html`

![](https://user-images.githubusercontent.com/53507833/173464352-1c1dfa9b-c00f-49c1-9e72-8d5e550c0ef8.png)
<br><br>
### Click red button if you want to trace packet or else green button if packets already traced
![](https://user-images.githubusercontent.com/53507833/173464439-d69dead6-c585-4bfb-997a-9714de972943.png)
<br><br>
### Choose a protocol and an option from the dropdown list
![](https://user-images.githubusercontent.com/53507833/173464605-92b4b487-84c7-4102-96b3-235c4938fc8a.png)
<br><br>
### Output Table
![](https://user-images.githubusercontent.com/53507833/173464625-54918abe-0dea-41d0-a9ba-9f26ef41aaac.png)


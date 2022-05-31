#!/bin/bash
mkdir dumper2
cd dumper2
mkdir tcp
mkdir udp
mkdir arp
tcpdump -c 200 -n -w output
tcpdump -r output -nn | grep 'UDP' >udpall
tcpdump -r output -nn | grep 'Flags' >tcpall
tcpdump -r output -nn | grep 'ARP' >arpall

tcpdump -e -r output | grep 'ARP' >arpmac
tcpdump -e -r output | grep 'UDP' >udpmac
tcpdump -e -r output | grep 'Flags' >tcpmac

cut -d ' ' -f2 udpmac > udpsourcemac
cut -d ' ' -f6 udpmac > udpdestmac
cut -d ' ' -f1 udpall > udptimestamp
cut -d ' ' -f3 udpall > udpsourceip
cut -d ' ' -f5 udpall > udpdestip
cut -d ' ' -f8 udpall > udplength
cut -d '.' -f5 udpsourceip > udpsourceport
cut -d '.' -f5  udpdestip > udpdestport

cut -d ' ' -f1 arpall > arptimestamp
cut -d ' ' -f5 arpall > arpsourceip
cut -d ' ' -f7 arpall > arpdestip
cut -d ' ' -f9 arpall > arplength
cut -d ' ' -f2 arpmac > arpsourcemac
cut -d ' ' -f6 arpmac > arpdestmac
cut -d '.' -f5  arpdestip > arpdestport
cut -d '.' -f5  arpsourceip > arpsourceport

cut -d ' ' -f1 tcpall > tcptimestamp
cut -d ' ' -f3 tcpall > tcpsourceip
cut -d ' ' -f5 tcpall > tcpdestip
cut -d ' ' -f2 tcpmac > tcpsourcemac
cut -d ' ' -f6 tcpmac > tcpdestmac
grep -o '[^,]*$' < tcpall > templength
cut -d ' ' -f3 templength > tcplength
cut -d '.' -f5  tcpsourceip > tcpsourceport
cut -d '.' -f5  tcpdestip > tcpdestport


#!mv udpall udptimestamp udpsource udpdest udp
#!mv tcpall tcptimestamp tcpsource tcpdest tcp
#!mv arptimestamp arpall arpdest arpsource arp

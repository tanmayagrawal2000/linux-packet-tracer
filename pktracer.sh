#!/bin/bash
rm -rf tracer && mkdir tracer
cd tracer
tcpdump -ne -c 200 > output
grep 'Flags' output > tcpall
grep 'UDP' output > udpall
grep 'ARP' output > arpall
cut -d ' ' -f1 tcpall > tcptimestamp
cut -d ' ' -f2 tcpall > tcpsourcemac
cut -d ' ' -f4 tcpall > tcpdestmac
cut -d ' ' -f10 tcpall > tcpsourceip_port
cut -d ' ' -f12 tcpall > tcpdestip_port
cut -d '.' -f 1-4 tcpsourceip_port >tcpsourceip
cut -d '.' -f 1-4 tcpdestip_port >tcpdestip
grep -o '[^,]*$' < tcpall > templength
cut -d ' ' -f3 templength > tcplength
rm templength
cut -d '.' -f5  tcpsourceip_port > tcpsourceport
cut -d '.' -f5  tcpdestip_port > tcpdestport

cut -d ' ' -f1 udpall > udptimestamp
cut -d ' ' -f2 udpall > udpsourcemac
cut -d ' ' -f4 udpall > udpdestmac
cut -d ' ' -f10 udpall > udpsourceip_port
cut -d ' ' -f12 udpall > udpdestip_port
cut -d '.' -f 1-4 udpsourceip_port >udpsourceip
cut -d '.' -f 1-4 udpdestip_port >udpdestip
cut -d '.' -f5  udpsourceip_port > udpsourceport
cut -d '.' -f5  udpdestip_port > udpdestport
grep -o '[^,]*$' < udpall > templength
cut -d ' ' -f3 templength > udplength
rm templength

cut -d ' ' -f1 arpall > arptimestamp
cut -d ' ' -f2 arpall > arpsourcemac
cut -d ' ' -f4 arpall > arpdestmac
cut -d ' ' -f12 arpall > arpsourceip
cut -d ' ' -f14 arpall > arpdestip
grep -o '[^,]*$' < arpall > templength
cut -d ' ' -f3 templength > arplength
rm templength

#/bin/bash

while true; do
	sleep 2
	IP=0

	if nice ping -I wlan0 -c 2 -W 1 -n -q 192.168.0.3 > /dev/null 2>&1; then 
		IP="192.168.0.3"
		echo "wifi device detected $IP"
		
		nice -n -9 raspivid -ih -w 800 -h 480 -b 20000000 -g 20 -t 0 -fps 160 -pf high -o - | nice -n -9 socat - udp4-datagram:$IP:5600,broadcast

	fi
done


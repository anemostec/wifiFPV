# wifiFPV

5.8GHz video Wifi Access Point

# configuration file & startup script

hostapd.conf should be placed under the directory /etc/
This file configure your wifi hotspot, here you can change the SSID and the wifi password

dnsmasq.conf should be placed under the directory /etc as well, you normally have nothing to change in this file, basically it will attribute the IP 192.168.0.3 to the first smartphone that connects to it.

rc.local should be placed under the directory /etc as well, you normally have nothing to change in this file, it will launch the video and transmit it to the smartphone as soon as it is detected.

video.sh should be placed under the /root directory, it launches raspivid video and transmit it to the smartphone via socat. You can change here the video parameters like width or weight of the image, the fps, ...
If you want to tweak things, that's here


# Getting Started

flash the .img file from the following link https://e1.pcloud.link/publink/show?code=XZQpMpZMdBxNyOr5Ty5VnadfuMRMBDVdB9V to a formated SD card
Put the SD card in your raspberry pi (it could be a raspberry pi zero)
Verify that the camera is well connected
Verify that a 5.8Ghz wifi usb dongle is well connected
Plug in the power

After started, with your smartphone, connect to the wifi hotspot anemos-ap, password anemostec

By using the FPV_VR App you will see the low latency video flowing on port 5600.

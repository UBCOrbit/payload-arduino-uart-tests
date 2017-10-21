#!/bin/sh
stty -F /dev/ttyACM0 cs8 115200 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts 
# Got this from playground.arduino.cc/Interfacing/LinuxTTY
# Initializes the serial tty port to communicate with the arduino

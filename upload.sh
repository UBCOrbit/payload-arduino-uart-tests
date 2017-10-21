#!/bin/bash

# Runs the test specified by the first argument

ard_cmd=arduino

#case "$1" in
#    ping)
#        sketch=$dir/ping/serial/serial-ping.ino
#        ;;
#    ping1)
#        sketch=$dir/ping/serial1/serial1-ping.ino
#        ;;
#    relay)
#        sketch=$dir/relay/serial/serial-relay.ino
#        ;;
#    relay1)
#        sketch=$dir/relay/serial1/serial1-relay.ino
#        ;;
#    loopback)
#        sketch=$dir/loopback/serial/serial-loopback.ino
#        ;;
#    loopback1)
#        sketch=$dir/loopback/serial1/serial1-loopback.ino
#        ;;
#    *)
#        echo -e "Please enter one of:\n * ping\n * ping1\n * relay\n * relay1\n * loopback\n * loopback1"
#        ;;
#esac

sketch=$PWD/$1/$1.ino

if [[ -e $sketch ]]; then
    $ard_cmd --board arduino:avr:mega:cpu=atmega2560 --port /dev/ttyACM0 --upload $sketch
else
    echo "Please enter a valid test title (without the .ino extension)"
fi

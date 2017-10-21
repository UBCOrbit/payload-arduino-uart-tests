The arduino package provided by Ubuntu is four years old and doesn't support command line builds.
I've downloaded the latest arudino build tools, add it to your path for convinence.

Also, maybe sort out a better version control system for the arduino code and build stuff?
though because it's so simple it might not be important.

To build the sketch for the board, use the command
arduino --board arduino:avr:mega:cpu=atmega2560 --port /dev/ACM0 *sketch file*

I've written three types of tests, pings, relays, and loopbacks.
* Pings send a string to their respective serial ports every second.
* Relays relay data from their respective serial port to the other.
* Loopbacks send the data they recieve on their serial port back to that port.
The file structure is the way it is because Arduino doesn't like it when multiple top level files are in the same directory.
    To make this simpler, I wrote a script that automates the type of test to run on the Arduino call upload.sh

To view the data from the arduino serial port, use the command
cat /dev/ACM0

To send data to the arduino, use the command
echo "data" > /dev/ACM0

I've written wrapper scripts for these commands labeled listen.sh and send.sh respectively.

- Justin

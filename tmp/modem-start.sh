#!/bin/bash
echo "enter pin"
echo -e 'T+CPIN="0000"' > /dev/ttyACM1
sleep 0.1s
echo "enable gsm"
echo -e 'AT+CFUN=1' > /dev/ttyACM1
sleep 3s
echo "start wvdial
wvdial

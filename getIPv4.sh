#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Usage: getIPv4.sh <interface> (wlan0 | eth0 | br0)"
    exit 1
fi

INTERFACE=$1
IPv4=$(curl --interface "$INTERFACE" -s https://api.ipify.org)
if [ -z "$IPv4" ]; then
    echo "FAILED!"
    exit 1
fi
echo "$IPv4"

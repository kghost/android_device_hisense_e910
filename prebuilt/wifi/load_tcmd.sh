#!/bin/sh
# Load Test cmd image into RAM. Lixiuyong.

IMAGEPATH=/system/wifi

rmmod ar6000
sleep 2

/system/bin/insmod $IMAGEPATH/ar6000.ko testmode=1
sleep 1

exit 0

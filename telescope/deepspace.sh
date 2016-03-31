#!/bin/bash
#
# Long exposure imaging with Raspberry Pi Camera
# Use focus.sh to focus camera and telescope
# Start streamdeepspace.sh and access stream at http://astropiaddress:8080
#

#Make the directory, it will error and continue if it already exists
mkdir /tmp/telescope

#take 5 second exposure
raspistill -w 800 -h 600 -hf -vf -ss 5000000 -ISO 100 -sh 50 -br 50 -sa -75 -o /tmp/telescope/deepspace.jpg -tl 100 -t 999999999 -th 0:0:0

# -w width of image
# -h height of image
# -hf horizontil flip
# -vf verfical flip
# -ss exposure time 1000000 = 1 second
# -ISO ISO
# -sh sharpness
# -br brightness
# -sa Saturation
# -o output file
# -tl time between exposures
# -t time (set very high)
# -th 0:0:0 no thumbnail

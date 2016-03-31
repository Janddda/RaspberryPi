#!/bin/bash
#
# Stream telescope image generated by deepspace.sh
# Uses mjpg-streamer from http://sourceforge.net/code-snapshots/svn/m/mj/mjpg-streamer/code/mjpg-streamer-code-182.zip
#
cd /home/pi/mjpg-streamer-code-182/mjpg-streamer

LD_LIBRARY_PATH=./ ./mjpg_streamer -i "input_file.so -f /tmp/telescope -n deepspace.jpg -d 100" -o "output_http.so -w ./www"

# Connect to http://astropiaddress:8080 to view stream
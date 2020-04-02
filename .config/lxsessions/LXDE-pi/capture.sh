#!/bin/bash
FILENAME="myvid.h264_"
for INDEX in {1..5}
do 
	[ -f /home/pi/$FILENAME$INDEX ] && echo "file exists "$FILENAME$INDEX || raspivid -f -t 0 -o $FILENAME$INDEX -w 1920 -h 1080
done
# raspivid -f -t 0 -o /home/pi/myvid.h264 -w 1920 -h 1080

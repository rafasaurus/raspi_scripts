#!/bin/bash
# might need to trn lxsession to generate .config/lsxsession/LXDE-pi/ folder
FILENAME="/home/pi/video_"
for INDEX in {1..1000}
do 
	file="$FILENAME$INDEX.h264"
	echo "debug $file"
	[ -f $file ] || raspivid -f -t 0 -o "$file" -w 1920 -h 1080

	# catch Ctrl+c interrupt
	trap "echo Exited!; exit;" SIGINT SIGTERM
done

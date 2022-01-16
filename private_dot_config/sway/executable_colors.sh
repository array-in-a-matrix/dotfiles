#!/bin/sh
# pywal colors
# if no commandline argument is given, get location of a random image
if [[ -z $1 ]]; then
    IMAGE=$(find -L /home/linux/Pictures/Wallpapers/ -type f | shuf -n1)
else 
    IMAGE="$1"
fi
# generate color scheme of that image
wal -i "$IMAGE"
# make shell and tty that color
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh
# update firefox's colors
pywalfox update    
# update background with new image 
killall swaybg 
swaybg -i "$IMAGE" -m fill &
echo "Done."

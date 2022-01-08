# pywal colors

# get location of a random image
image=$(find -L /home/linux/Pictures/Wallpapers/ -type f | shuf -n1)
# generate color scheme of that image
wal -i "$image"
# make shell and tty that color
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh
# update firefox's colors
pywalfox update    
# update background with new image 
killall swaybg 
swaybg -i "$image" -m fill &

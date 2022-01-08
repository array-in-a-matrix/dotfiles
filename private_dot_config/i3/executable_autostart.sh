# pywal colors

image=$(find -L /home/linux/Pictures/Wallpapers/ -type f | shuf -n1)
wal -i $image
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh
pywalfox update    
feh --bg-fill "$image"

# polybar
bash ~/.config/polybar/shapes/scripts/pywal.sh "$image"
bash ~/.config/polybar/launch.sh --shapes &

# the gaps in i3-gaps
i3-msg gaps inner all set 20

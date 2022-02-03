#! /bin/bash
target=$(cat /home/cyber/.config/polybar/scripts/target_info.txt)

echo "%{F#FF0289}  %{F#ffffff}$target%{u-}"

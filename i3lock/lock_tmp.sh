#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
i3lock -i /tmp/screen.png -k --timesize=50 --datesize=50 --radius=200 --datestr="%Y-%m-%d" --timecolor=f0c674ff --datecolor=f0c674ff --indicator --timepos="ix-cw/2:iy-cw/6" --datepos="tx:ty-50"
rm /tmp/screen.png
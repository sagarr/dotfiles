#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
background=00000000
foreground=ffffffff
/home/rohankar/Projects/github/i3lock-color/x86_64-pc-linux-gnu/i3lock -u -i /tmp/screen.png \
		--timepos="x-90:h-ch+30" \
		--datepos="tx+24:ty+25" \
		--clock --datestr "Type password to unlock..." \
		--textcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground"
rm /tmp/screen.png

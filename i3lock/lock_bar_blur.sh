#!/bin/bash

scrot /tmp/screen.png

rectangles=" "
SR=$(xrandr --query | grep ' connected' | grep -o '[0-9][0-9]*x[0-9][0-9]*[^ ]*')
for RES in $SR; do
	SRA=(${RES//[x+]/ })
	CX=$((${SRA[2]} + 1480))
	CY=$((${SRA[1]} - 500))
	rectangles+="rectangle $CX,$CY $((CX+400)),$((CY-120)) "
done
# convert "$resized" -draw "fill black fill-opacity 0.4 $rectangles" "$l_resized"
convert /tmp/screen.png -scale 10% -scale 1000% -draw "fill black fill-opacity 0.4 $rectangles" /tmp/screen.png
# [[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
background=00000000
foreground=ffffffff
/home/rohankar/Projects/github/i3lock-color/x86_64-pc-linux-gnu/i3lock -i /tmp/screen.png \
		--timepos="x+1480:h-ch-450" --timesize=72 --timefont="M+ 1m" --datefont="M+ 1m" \
		--datepos="tx+0:ty+40" --datesize=30 --datestr="%A, %d %m %Y" \
		--clock \
		--blur 5 \
		--textcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground" \
		--bar-indicator \
		--bar-position h \
		--bar-direction 1 \
		--bar-max-height 10 \
		--bar-base-width 10 \
		--bar-color ffffffff \
		--keyhlcolor d23c3dff \
		--bar-periodic-step 10 \
		--bar-step 10 \
		--bar-width 250 \
		--redraw-thread \
		--ringvercolor=acbfbfff --ringwrongcolor=acbfbfff
rm /tmp/screen.png

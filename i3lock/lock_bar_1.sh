#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#ee00eeee'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

letterEnteredColor=d23c3dff
letterRemovedColor=d23c3dff
passwordCorrect=00000000
passwordIncorrect=d23c3dff
background=00000000
foreground=ffffffff

/home/rohankar/Projects/github/i3lock-color/x86_64-pc-linux-gnu/i3lock \
--timepos="x-90:h-ch+30" \
--datepos="tx+24:ty+25" \
--clock --datestr "Type password to unlock..." \
--insidecolor=$background --ringcolor=$foreground --line-uses-inside \
--keyhlcolor=$letterEnteredColor --bshlcolor=$letterRemovedColor --separatorcolor=$background \
--insidevercolor=$passwordCorrect --insidewrongcolor=$passwordIncorrect \
--ringvercolor=$foreground --ringwrongcolor=$foreground --indpos="x+280:h-70" \
--radius=20 --ring-width=4 --veriftext="" --wrongtext="" \
--textcolor="$foreground" --timecolor="$foreground" --datecolor="$foreground" \
--force-clock

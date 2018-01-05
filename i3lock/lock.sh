#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ffffffff'  # default
T='#ffffffff'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

/home/rohankar/Projects/github/i3lock-color/x86_64-pc-linux-gnu/i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--textcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 0            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%d %m %Y"     \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc

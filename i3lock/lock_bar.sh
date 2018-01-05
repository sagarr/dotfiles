#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#ee00eeee'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

/home/rohankar/Projects/github/i3lock-color/x86_64-pc-linux-gnu/i3lock \
--blur 5 \
--bar-indicator \
--bar-position h \
--bar-direction 1 \
--bar-max-height 50 \
--bar-base-width 50 \
--bar-color 000000cc \
--keyhlcolor 880088cc \
--bar-periodic-step 50 \
--bar-step 50 \
--bar-width 250 \
--redraw-thread \
\
--clock \
--force-clock \
--timepos 125:h-110 \
--timecolor 880088ff \
--datepos 5:ty \
--datecolor 770077ff \
--date-align 1 \
--time-align 2 \
--ringvercolor 8800ff88 \
--ringwrongcolor ff008888

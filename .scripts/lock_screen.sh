#!/bin/bash

B='#00000000' # blank
C='#ffffffFF'  # clear ish
D='#A169BFff' # default
T='#569cd6ff'  # text
W='#F44747FF'  # wrong
V='#FFAF00FF'  # verifying
VT='F7F6F0FF'

i3lock \
--radius 60 \
--ind-pos="w/2:h/2" \
--time-pos="w/2:h/2-200" \
--date-pos="w/2:h/2-160" \
--greeter-pos="w/2:h/2" \
--insidever-color=$B   \
--ringver-color=$V     \
--ring-width=6 \
\
--insidewrong-color=$B \
--ringwrong-color=$W   \
\
--inside-color=$B      \
--ring-color=$D        \
--line-color=$B        \
--separator-color=$D   \
\
--verif-color=$VT        \
--wrong-color=$C        \
--time-color=$C        \
--date-color=$C        \
--layout-color=$T      \
--keyhl-color=$VT       \
--bshl-color=$W        \
\
--screen 1            \
--blur 10              \
--clock               \
--indicator           \
--time-str="%I:%M:%S %p"  \
--date-str="%A %d %b" \
--wrong-text="" \
--verif-text="" \
--noinput-text="" \
--time-size=75 \
--date-size=40 \
--verif-size=20 \
--wrong-size=20

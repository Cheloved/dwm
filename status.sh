#!/bin/bash

pgrep -x status.sh > /dev/null && exit

while true; do
    INFO="󰕾 $(pamixer --get-volume)% | "
    INFO=${INFO}" $(xkb-switch)"
    INFO=${INFO}" $(date '+%A, %B %-d')"
    INFO=${INFO}"󱑂 $(date '+%I:%M %p')"
    xsetroot -name "${INFO}"
done

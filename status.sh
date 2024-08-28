#!/run/current-system/sw/bin/bash

pgrep -x status.sh > /dev/null || exit

while true; do
    # INFO="󰕾 $(amixer | grep -A 4 Master | tail -n 1 | grep -o -E '\[[0-9]{1,2}%\]') | "
    INFO="󰕾 [$(pamixer --get-volume)%] | "
    INFO=${INFO}"  $(xkb-switch) | "
    INFO=${INFO}" $(date '+%A, %B %-d') | "
    INFO=${INFO}"󱑂 $(date '+%I:%M %p') | "
    xsetroot -name "${INFO}"
    sleep 0.1
done

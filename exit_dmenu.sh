#!/run/current-system/sw/bin/bash

choise=$(echo -e 'Reboot\nPoweroff\nExit' | dmenu -i -l 3 -nb $2 -nf $3 -sb $4 -sf $5)

[ $choise = "Reboot" ] && reboot
[ $choise = "Poweroff" ] && poweroff
[ $choise = "Exit" ] && pkill X

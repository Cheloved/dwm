#!/bin/bash
choise=$(echo -e 'Reboot\nPoweroff\nExit' | dmenu -i -l 3 -nb $2 -nf $3 -sb $4 -sf $5)

[ $choise = "Reboot" ] && doas reboot
[ $choise = "Poweroff" ] && doas poweroff
[ $choise = "Exit" ] && pkill dwm

#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="menu (v1.1)"
TITLE="b4d_p1"
MENU="by Hand_voll_Schnee"
OPTIONS=(1 "shutdown"
         2 "reboot")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
          sudo shutdown -h now
          ;;
        2)
          sudo reboot
          ;;
esac

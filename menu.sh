#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="menu (v1.1)"
TITLE="b4d_p1x"
MENU="by Hand_voll_Schnee"
OPTIONS=(1 "wifi"
         2 "shutdown")

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
            ./wifi.sh
            ;;
        2)
            ./shutdown.sh
            ;;
esac

#!/bin/bash

# Power menu options
options="Shutdown\nReboot\nLock\nLogout"

# Display the menu using dmenu
chosen=$(echo -e "$options" | dmenu -i -p "Power Menu:")

# Execute the chosen action
case "$chosen" in
    Shutdown)
        notify-send "Shutting down..." && shutdown now
        ;;
    Reboot)
        notify-send "Rebooting..." && reboot
        ;;
    Lock)
        notify-send "Locking screen..." && exec slock
        ;;
    Logout)
        notify-send "Logging out..." && killall dwm
        ;;
    *)
        exit 1
        ;;
esac

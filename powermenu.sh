#!/bin/sh

run() {
	echo "Shutdown\nReboot\nLogout" | rofi -dmenu -theme menu -no-fixed-num-lines
}

selection="$(run)"

case ${selection} in
	"Shutdown")
		systemctl poweroff
		;;
	"Reboot")
		systemctl reboot
		;;
	"Logout")
		killall metacity
		;;
	*)
		;;
esac

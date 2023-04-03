#!/bin/sh

if [ -f "$1" ] 
then
	case "$1" in
		*.7z)
			7z x "$1"
			;;
		*.tar)
			tar -xvf "$1"
			;;
		*.tar.gz)
			tar -zxvf "$1"
			;;
		*.zip)
		   	unzip "$1"
			;;
		*.rar)
			unrar x "$1"
			;;
		*)
			echo "'$1' is not supported"
			;;
	esac
else
	echo "'$1' is not a valid file"
fi

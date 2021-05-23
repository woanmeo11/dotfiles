#!/usr/bin/env bash

function run {
	if ! pgrep -f $1 ;
	then
		$@&
	fi
}

~/.fehbg
~/.scripts/touchpad_toggle.sh

run fcitx
run xss-lock ~/.scripts/lock_screen.sh

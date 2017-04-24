#!/bin/bash

function mouse1(){

    if `xmodmap -pke | grep -q "Pointer_Button"`; then
    xmodmap -e "keycode 52= z Z Cyrillic_ya Cyrillic_YA"
    xmodmap -e "keycode  53 = x X Cyrillic_che Cyrillic_CHE"
    xmodmap -e "keycode  54 = c C Cyrillic_es Cyrillic_ES"
	echo enabled
    else
    xmodmap -e "keycode 52 = Pointer_Button1"
    xmodmap -e "keycode 53 = Pointer_Button2"
    xmodmap -e "keycode 54 = Pointer_Button3"
    	echo disabled
    fi
    
    }

[[ $1 = "m1" ]] && mouse1

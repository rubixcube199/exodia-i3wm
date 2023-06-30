#!/usr/bin/env bash

#####################################
#                                   #
#  @author      : 00xWolf           #
#    GitHub    : @mmsaeed509       #
#    Developer : Mahmoud Mohamed   #
#  﫥  Copyright : Exodia OS         #
#                                   #
#####################################

CONFIG="$HOME/.config/i3/alacritty/alacritty.yml"

if [ "$1" == "--float" ];
	
	then
		
		alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG"

elif [ "$1" == "--full" ];
	
	then
		
		alacritty --class 'Fullscreen,Fullscreen' --config-file "$CONFIG" \
				  -o window.startup_mode=fullscreen window.padding.x=30 window.padding.y=30 \
				  window.opacity=0.95 font.size=14

else

	alacritty --config-file "$CONFIG"
	
fi

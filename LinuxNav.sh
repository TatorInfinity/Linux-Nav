#/bin/bash # this shows the computer the programming language is bash
clear
### menu ###

menu() {
	echo L i n u x    N a v
	echo ---------------------------------
	echo          ___linux Navigator___
	echo ------------------------------
	echo software - 0
	echo firefox - 1
	echo terminal - t
	echo help - h

			read -p "..." homeinput
				
		

				if [ "$homeinput" = "0" ]; then
					sftwr
				elif [ "$homeinput" = "1" ]; then
					echo Loading Firefox
					firefox &
				elif [ "$homeinput" = "t" ]; then      # i think this is correct
					xfce4-terminal &
				elif [ "$homeinput" = "h" ]; then
					clear
					echo Minimal Linux Navigator
					echo Made by Tator
					echo bash 4.40
					echo License GPL 3.0
					echo ------------how to use the software---------
					echo type the prgram listed for list of all software.
					echo ------------------------------------------------
					echo          - - - > firefox
					echo          - - - > loading firefox...
					echo ------------------------------------------------
					echo
					echo
					echo         how to mod this?
					echo      --------------------
					echo  ---add you paths to specific prgrams---
					echo ---add a search engine---
					echo ---add more prgrams---
					echo
					echo
					echo
					echo ------------------------------------------------
				
				fi
		
}




sftwr() {
      						#this shows the software in the users with compgen and dmneu

compgen -c   | dmenu -i  -l 20 | xargs -r sh -c 'exec "$0" "$@"' &  
}

menu

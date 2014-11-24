#!/bin/bash

shopt -s extglob

for f in !(*.sh)
do
	while :
	do

		read -p "Would you like to install $HOME/.$f ? [y/n] " -n 1 -r
		echo
		if [[ ! $REPLY =~ ^[Yy]$ ]]
		then
			if [[ ! $REPLY =~ ^[Nn]$ ]]; then
				echo "You should answer y or n !"
				continue
			fi
		else
			if [[ -f $HOME/.$f || -h $HOME/.$f ]]; then
				rm -rf "$HOME/.$f"
			fi
			ln -s "$(pwd)/$f" "$HOME/.$f"
			echo "$HOME/.$f successfully installed"
		fi
		break

	done
done

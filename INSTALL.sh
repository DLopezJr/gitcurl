#!/bin/sh -e
#PURPOSE: Installer 

FILE="gitcurl";

if [ $(id -u) -eq 0 ]; then {
	PREFIX="/usr/bin"; # mingw doesnt have /usr/local in $PATH
	cp    "$FILE" "$PREFIX/$FILE";
	chmod 755     "$PREFIX/$FILE";
} else {
	XDG_BIN_HOME="$HOME/bin"; # mingw doesnt have $HOME/.local/bin in $PATH
	mkdir -p      "$XDG_BIN_HOME";
	cp    "$FILE" "$XDG_BIN_HOME/$FILE";
	chmod 755     "$XDG_BIN_HOME/$FILE";
} fi

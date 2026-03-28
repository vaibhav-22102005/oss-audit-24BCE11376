#!/bin/bash
# Script 2: FOSS Package Inspector
 
PACKAGE="firefox-esr"
 
if dpkg -l | grep -q $PACKAGE; then
 echo "$PACKAGE is installed."
 dpkg -l | grep $PACKAGE
else
 echo "$PACKAGE is NOT installed."
fi
 
case $PACKAGE in
 firefox|firefox-esr) echo "Firefox: Open source browser promoting an open web" ;;
 vlc) echo "VLC: Open source multimedia player" ;;
 git) echo "Git: Distributed version control system" ;;
 apache2) echo "Apache: Web server powering internet" ;;
esac
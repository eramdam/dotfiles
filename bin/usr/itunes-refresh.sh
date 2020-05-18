#!/bin/bash
echo "Refreshing Music.app"
echo "argument: $1"
osascript /Users/damien/.dotfiles/bin/usr/itunes-refresh.scpt "$1"
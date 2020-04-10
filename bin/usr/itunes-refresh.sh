#!/bin/bash
echo "Synchronizing music files..."
rsync -rtvu --delete /Volumes/Damien\ OST/beets/ ~/Music/beets
echo "Refreshing Music.app"
osascript /Users/damien/.dotfiles/bin/usr/itunes-refresh.scpt /Users/damien/Music/beets/
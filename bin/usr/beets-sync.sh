#!/usr/bin/env sh
echo "Synchronizing music files..."
rsync -rtvu --delete /Volumes/Damien\ OST/beets/ ~/Music/beets
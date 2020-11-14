#!/usr/bin/env sh
echo "Synchronizing music files..."
rsync -rtvu --delete /Volumes/Meloetta/beets/ ~/Music/beets
#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
top -b -n 1 > $DIR/top.out
$DIR/venv/bin/python3 $DIR/generateWallpaper.py
swaymsg output "*" background $DIR/wallpaper.png fill

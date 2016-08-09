#!/bin/bash

font_dir="$HOME/.local/share/fonts"

mkdir -p $font_dir

echo "Copying fonts..."
sudo cp "./fonts/PowerlineSymbols.otf"  "$font_dir/"
sudo cp "./fonts/10-powerline-symbols.conf" "/etc/fonts/conf.avail/"
sudo ln -s "/etc/fonts/conf.avail/10-powerline-symbols.conf" "/etc/fonts/conf.d/10-powerline-symbols.conf"

echo "Resetting font cache.."
fc-cache -f $font_dir

echo "Font installed."

echo "Copying tmux config.."
cp "./tmux.conf" "~/.tmux.conf"

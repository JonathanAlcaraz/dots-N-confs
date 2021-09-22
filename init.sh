#!/bin/bash

ln -s ~/dots-N-confs/.vimrc ~/
ln -s ~/dots-N-confs/.Xresources ~/

dirs=$(ls -1 ~/dots-N-confs/.config/)

for dir in ${dirs[*]}
do
  if [ ! -d ~/.config/$dir ]; then
    mkdir ~/.config/$dir
  fi
  ln -s ~/dots-N-confs/.config/$dir/* ~/.config/$dir/
done

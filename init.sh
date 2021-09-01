#!/bin/bash

list=(".vimrc" ".Xresources" ".config/fish/config.fish" ".config/zathura/zathurarc")

for file in ${list[*]}
do
  ln -s ~/dots-N-confs/$file ~/$file
done

#!/bin/bash

. brew.sh
. dock.sh

DOT_FILES=(.zprofile .gitconfig .asdfrc .hushlogin)

for file in ${DOT_FILES[@]}

do
  ln -sf $HOME/dotfiles/$file $HOME/$file
  echo "placed symlink: $file"
done

echo "Success! setup is finished."

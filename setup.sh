#!/bin/bash

# . brew.sh
# . dock.sh

DOT_FILES=(
  .zprofile
  .zshrc
  .gitconfig
  .hushlogin
)

for file in "${DOT_FILES[@]}"; do
  ln -snf "$HOME/dotfiles/$file" "$HOME/$file"
  echo "linked $file"
done

find "$HOME/dotfiles/dot_config" -type f | while read -r src; do
  rel="${src#$HOME/dotfiles/dot_config/}"
  dst="$HOME/.config/$rel"

  mkdir -p "$(dirname "$dst")"
  ln -snf "$src" "$dst"

  echo "linked $dst"
done

echo "Success! setup is finished."

#!/bin/bash

ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/ellipticobj/dotfiles.git"
REPO_NAME="dotfiles"


is_stow_installed() {
  command -v stow 2>&1 >/dev/null
}

if ! is_stow_installed; then
  echo "stow is not installed"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "repository'$REPO_NAME' already exists. backing up and cloning"
  mv $REPO_NAME{,.bak}
fi

git clone "$REPO_URL"

# check if the clone was successful
if [ $? -eq 0 ]; then
  cd "$REPO_NAME"
  stow -vt ~ * --adopt 
else
  echo "failed to clone the repository."
  exit 1
fi


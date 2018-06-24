#!/usr/bin/env bash

echo "Setting up your Mac..."

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="/Users/hdavis/Documents/code/dotfiles" # $(realpath $"$0")

echo $DOTFILES_DIR

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew..."
brew update

echo "Setting up symlinks..."
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.gemrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages
echo "Installing packages..."
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"

# Set up mac
files=`find /Users/hdavis/Documents/code/dotfiles/macos -depth 1`
for DOTFILE in $files
do
	source $DOTFILE
done

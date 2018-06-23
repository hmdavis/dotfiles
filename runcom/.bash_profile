source ~/git-completion.bash

for DOTFILE in `find /Users/hdavis/Documents/code/dotfiles`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done


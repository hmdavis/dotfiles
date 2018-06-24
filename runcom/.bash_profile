source ~/git-completion.bash

files=`find /Users/hdavis/Documents/code/dotfiles/system -depth 1`
for DOTFILE in $files
do
	source $DOTFILE
done

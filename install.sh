DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Installing dotfiles."

./install-headless.sh

echo ".gtkrc-2.0"
rm -i ~/.gtkrc-2.0
ln -s $DIR/.gtkrc-2.0 ~/.gtkrc-2.0 

echo ".xmonad/"
rm -Ir ~/.xmonad
ln -s $DIR/.xmonad ~/.xmonad

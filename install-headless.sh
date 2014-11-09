# Installs dotfiles for a headless environment.
# Good for, like, the server your university provides or something.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Installing headless dotfiles."

echo ".zshrc"
rm -i ~/.zshrc
ln -s $DIR/.zshrc ~/.zshrc

echo ".vimrc"
rm -i ~/.vimrc
ln -s $DIR/.vimrc ~/.vimrc

echo ".vim/"
rm -Ir ~/.vim
ln -s $DIR/.vim ~/.vim
mkdir ~/.vim/backup
mkdir ~/.vim/tmp
mkdir ~/.vim/undo

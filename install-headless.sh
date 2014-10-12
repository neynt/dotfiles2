# Installs dotfiles for a headless environment.
# Good for, like, the server your university provides or something.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Installing headless dotfiles."

echo ".zshrc"
rm -i ~/.zshrc
ln -s $DIR/.zshrc ~/.zshrc

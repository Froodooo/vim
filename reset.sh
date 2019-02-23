echo "Removing fzf"
~/.fzf/uninstall
sudo rm -r ~/.fzf

echo "Removing .vim directory"
sudo rm -r ~/.vim

echo "Removing .vimrc"
sudo rm ~/.vimrc

echo "Creating new .vimrc"
touch ~/.vimrc

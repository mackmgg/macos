# Setup shell
git clone --recursive https://github.com/sorin-ionescu/prezto.git "~/.zprezto"
chsh -s /bin/zsh

# Download dotfiles
git clone https://github.com/mackmgg/mydotfiles.git ~/.dotfiles
cp ~/.dotfiles/* ~/

# Setup homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install $(cat homebrew.txt)

# Setup shell
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# Download dotfiles
git clone https://github.com/mackmgg/mydotfiles.git ~/.dotfiles
cp ~/.dotfiles/* ~/

# Setup homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install $(cat homebrew.txt)

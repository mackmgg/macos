# Setup shell
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# Download dotfiles. This is a terrible kludge right now
git clone https://github.com/mackmgg/mydotfiles.git "$HOME/.dotfiles"
for rcfile in $(find $HOME/.dotfiles -name '.*' -mindepth 1 | cut -c $(echo "$HOME/.dotfiles/" | wc -c)-); do
  ln -s $HOME/.dotfiles/$rcfile $HOME/${rcfile}
done

# Install stuff
apt install $(cat homebrew.txt)

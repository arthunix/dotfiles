## DOTFILES

### Installing
```sh
#echo ".cfg" >> .gitignore
git clone --bare git@github.com:arthunix/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

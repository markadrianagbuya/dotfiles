# Dotfiles

## Symlink dotfiles to home directory

### Setup
Clone this repo into ~/personal_code

After downloading zsh

Sim-link all the dotfiles. Run the following from this directory
```
ln -sv ~/personal_code/dotfiles/dotfiles/pryrc ~/.pryrc
ln -sv ~/personal_code/dotfiles/dotfiles/gitconfig ~/.gitconfig
ln -sv ~/personal_code/dotfiles/dotfiles/vimrc ~/.vimrc
ln -sv ~/personal_code/dotfiles/dotfiles/ideavimrc ~/.ideavimrc
ln -sv ~/personal_code/dotfiles/dotfiles/tmux.conf ~/.tmux.conf
ln -sv ~/personal_code/dotfiles/dotfiles/gitignore_global ~/.gitignore_global
```

Note: You may already have a ~/.gitconfig. If so, adjust file accordingly so that this repo's gitconfig can be symlinked.

If at work, you will need to include the gitconfig to override the github user email:

```
ln -sv ~/personal_code/dotfiles/dotfiles/gitconfig_jora ~/.gitconfig_jora
```

Download tmuxinator settings
```
curl -o ~/.bin/tmuxinator.zsh --create-dirs https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh
```

Add custom zsh files (relies on oh-my-zsh)
```
ln -sv ~/personal_code/dotfiles/zsh_custom_files/* $ZSH_CUSTOM
source ~/.zshrc
```

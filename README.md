# Dotfiles

## Symlink dotfiles to home directory

### Setup
After downloading zsh

Sim-link all the dotfiles. Run the following from this directory
```
ln -sv ~/personal_code/dotfiles/dotfiles/pryrc ~/.pryrc
ln -sv ~/personal_code/dotfiles/dotfiles/gitconfig ~/.gitconfig
ln -sv ~/personal_code/dotfiles/dotfiles/vimrc ~/.vimrc
ln -sv ~/personal_code/dotfiles/dotfiles/tmux.conf ~/.tmux.conf
```
CANDIX-1040-rails-6-multidb

If at work, you will need to include the gitconfig to override the github user email:

```
ln -sv ~/personal_code/dotfiles/dotfiles/gitconfig_jora ~/.gitconfig_jora
```

Add custom zsh files (relies on oh-my-zsh)
```
ln -sv ~/personal_code/dotfiles/zsh_custom_files/* $ZSH_CUSTOM
cp -a zsh_custom_files/. $ZSH_CUSTOM
```


Download tmuxinator settings
```
curl -o ~/.bin/tmuxinator.zsh --create-dirs https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh
```

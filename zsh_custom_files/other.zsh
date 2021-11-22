export EDITOR=vim
defaults write NSGlobalDomain KeyRepeat -int 1  # Makes key repeat faster
defaults write -g AppleKeyboardUIMode -int 2    # Allows user to control prompts using keyboard

# add kubectl autocomplete permanently to your zsh shell
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh);
fi

# always init pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Tmuxinator Completion
# This file needs to be downloaded from the repo: https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh
source ~/.bin/tmuxinator.zsh

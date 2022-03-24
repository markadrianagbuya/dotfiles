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

# # Activate zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# # Provide access to rbenv command line utility
export PATH="$HOME/.rbenv/bin:$PATH"

# # Automatically init rbenv on startup
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/markagbuya/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/markagbuya/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/markagbuya/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/markagbuya/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/Qt5.5.0/5.5/clang_64/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# So that bundle open uses VSCode
export BUNDLE_EDITOR="code"
export EDITOR="code"

# For the ZSH prompt https://spaceship-prompt.sh/getting-started/
export ZSH_THEME="spaceship"

# This is to prevent `error: gpg failed to sign the data`
export GPG_TTY=$(tty)

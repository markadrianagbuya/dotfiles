# Aliases - Source me or add to zshrc
# For a full list of active aliases, run `alias`.

alias v="vim"
alias t="terraform"
alias k="kubectl"

# Git
alias g="git"
alias ga="git add"
alias gs="git status"
alias gdc="git diff --cached"
alias gd="git diff --exit-code || git diff" # This will show a git diff only if there is a diff. It will open the pager but also leave a trail in the terminal
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gss="git stash save"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gta="git tag -a"
alias gl="git log --oneline --decorate --graph"
alias gl2="git log --abbrev-commit --pretty=format:'%C(yellow)%h  %Cred%ad  %Cblue%<(20)%an  %Cgreen%d %Creset%s' --date=short"
alias gp="git push -u" # -u option ensures that the upstream branch is set (which allows git to show relationship of branch using `git status` and allows us to call `git pull` without args)
alias grhh="git reset --hard HEAD"
alias merge="git merge"
alias push="git push -u" # -u option ensures that the upstream branch is set (which allows git to show relationship of branch using `git status` and allows us to call `git pull` without args)
alias pushtag="git push origin"
alias pull="git pull --rebase" # default is merge commit. I prefer rebase
alias tag="git tag"
alias deletelocaltag="git tag -d"
alias deleteremotebranch="git push origin --delete"
alias deleteremotetag="git push origin --delete"
alias deletelocalbranch="git branch -d" # this will fail if there are commits on the branch that have not been merged to master or pushed to another branch remotely
alias deletelocaltag="git tag -d"
alias deletelocalbranchforce="git branch -D"
alias removedeletedremotebranches="git remote prune"
alias rebasemaster="git pull --rebase origin master" # can be used on a branch to rebase onto origin/master.
alias unstage="git reset HEAD" # unstages but maintains the modifications
alias undocommit="git reset --soft HEAD~" # undo commit and not affect working directory (committed files will be staged)
alias undochange="git checkout --"
alias currentbranch="git rev-parse --abbrev-ref HEAD | tr -d '\n'"
alias copycurrentbranch="echo \`currentbranch\` | pbcopy"
alias gitrepo="git config --get remote.origin.url | sed 's/.*github.com.//;s/\..*//'"
alias openpr="open https://github.com/\`gitrepo\`/compare/\`currentbranch\`\?expand=1"
alias recoverfile='git checkout master' # gets the file from master. Needs to be modified if file deleted in master
alias restorefile='git checkout master' # gets the file from master. Needs to be modified if file deleted in master
alias branchfrommaster='gco master; pull; gcob'
alias bfm='branchfrommaster'
alias gra='git rebase --abort'
alias master='git checkout master'
alias grc='git rebase --continue'

# Bundler
alias be="bundle exec"
alias ber="bundle exec rake"

alias test="bundle exec rspec spec"

# Rails
alias migrate='bundle exec rake db:migrate db:test:prepare'
alias server='bundle exec rails server'
alias console='bundle exec rails console'
alias seed='bundle exec rake db:seed'

# Navigation
alias jobengine='cd ~/code/jora-candix-jobengine'
alias localhost='cd ~/code/localhost'
alias dotfiles='cd ~/personal_code/dotfiles'

# Misc
alias generatesalt='LC_CTYPE=C tr -dc "A-Za-z0-9" < /dev/urandom| head -c 10'
alias bbundle='bundle'
alias code.='code .'
alias c='code'
alias editaliases='code $ZSH_CUSTOM/aliases.zsh'
alias refreshaliases='source $ZSH_CUSTOM/aliases.zsh'
alias applyaliases='source $ZSH_CUSTOM/aliases.zsh'
alias updatealiases='source $ZSH_CUSTOM/aliases.zsh'

# Jora
alias joraserver='forego start -p 3000'
alias openbuildkite="open https://buildkite.com/seek/jora-candix-jobengine/builds\?branch=\`currentbranch\`"

# Functions

## Gets a file from another branch. Used like `restorefilefrombranch branch_name file_path`
## E.g. restorefilefrombranch CANDIX-1165-refactor-email-alert-specs spec/integration/email_alert/serp_email_alert_form_spec.rb
restorefilefrombranch() {
  git checkout "$1" -- "$2"
}

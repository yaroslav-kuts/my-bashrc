# extract the branch name when your are in git repository
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# \u@\h \[\033[32m\] - user, host name and its displaying color
# \w\[\033[33m\] - current working directory and its displaying color
# \$(parse_git_branch)\[\033[00m\] - git branch name and its displaying color
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Set Vim as my default editor
export EDITOR=vim

# Get rid of annoying warning on MacOS
export BASH_SILENCE_DEPRECATION_WARNING=1

##### ALIASES #####

alias q='exit'
alias c='clear'
alias h='history'
alias hg='history | grep'
alias pp='ss -tulpn | grep'

alias projects='cd ~/Projects'
alias home='cd'
alias back='cd $OLDPWD'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias y='yarn'
alias ys='yarn start'
alias yt='yarn test'

alias t='npm run test'
alias b='npm run build'

alias g='git'
alias gs='git status'
alias gbr='git branch -m' #rename branch
alias gst='git stash'
alias gstb='git stash branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias ga='git add'
alias ga.='git add .'
alias gco='git checkout'
alias gcob='git checkout -'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gcb='git branch --show-current'
alias gpcb='git push origin $(gcb)'
alias gfpcb='git push -f origin $(gcb)'

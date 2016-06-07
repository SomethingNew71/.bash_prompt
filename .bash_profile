# Sets bash_prompt terminal styles
if [ -f ~/.bash_prompt ]; then
source ~/.bash_prompt
fi

###################################
# Git aliases
###################################
alias gaa="git add -A"
alias ga="git add"
alias gcm="git commit -m"
alias gcv="git cz"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gbd="git branch -D"
alias gb="git branch --track"
alias gf="git fetch"
alias gpu="git pull"
alias gph="git push"
alias gm="git merge"
alias gsr="git show-ref"
alias gs="git status"
alias gr="git remote -v"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#########################################
# Random Shortcuts to normally used apps
#########################################
alias cddev="cd ~/Documents/proj"
alias chrome="open -a /Applications/Browsers/Google\ Chrome.app"
alias atom='open -a "/Applications/Atom.app"'

# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi
# PATH=/usr/local/apache2/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export EDITOR=atom

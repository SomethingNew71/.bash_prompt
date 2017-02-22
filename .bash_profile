# Declare Version
###################################
DARKRED=$(tput setaf 160)
echo "$DARKRED Super-Bash Version 1.0"

# Tab Completion scripts for terminal
###################################
if [ -f ~/git-completion.bash ]; then
source ~/git-completion.bash
fi

# Terminals Styles if present
###################################
if [ -f ~/.bash_prompt ]; then
source ~/.bash_prompt
fi

###################################
# Sets defualt terminal location
###################################

# Uncomment this and change to your project directory if you wanted your terminal to autostart there
# eval cd ~/Projects

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
alias gf="git fetch"
alias gpu="git pull"
alias gph="git push"
alias gm="git merge"
alias gs="git status"
alias gr="git remote -v"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#########################################
# Random Shortcuts to normally used apps
#########################################
# Can be changed to your personal projects directory
alias cddev="cd ~/Projects"
# Ability to search previous commands
alias search="cat ~/.bash_history | grep"



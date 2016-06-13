# Sets bash_prompt terminal styles
if [ -f ~/.bash_prompt ]; then
source ~/.bash_prompt
fi

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# This loads nvm
export NVM_DIR="/Users/cole/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH=./node_modules/.bin:$PATH

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

export EDITOR="atom"
export GIT_EDITOR="nano"

# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi
# PATH=/usr/local/apache2/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Proxy functions
function proxyon(){
  ## Prompts in terminal
  echo -n "Enter your ZID:"
  read -e username
  echo -n "Please enter password:"
  read -es password
  echo
  export http_proxy="http://$username:$password@10.43.196.134:8080/"
  export https_proxy=$http_proxy
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$http_proxy
  export ftp_proxy=$http_proxy
  export rsync_proxy=$http_proxy
  export no_proxy="*.local, 169.254/16"
  echo -e "\nProxy environment enabled."
}
function proxyoff(){
  echo "Disabling proxy enviroment"
  unset HTTP_PROXY
  unset http_proxy
  unset HTTPS_PROXY
  unset https_proxy
  unset FTP_PROXY
  unset ftp_proxy
  unset RSYNC_PROXY
  unset rsync_proxy
  echo -e "\nProxy environment disabled."
}

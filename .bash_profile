# Sets bash_prompt terminal styles
if [ -f ~/.bash_prompt ]; then
source ~/.bash_prompt
fi

# Live pull request pulls
function gfpr(){

  # checkout new PR branch, pull commits, return to original branch,
  # reset to pristine, return back to new PR branch
  function checkoutAndPull(){
    echo $1 $2 $3 $4
    git checkout -b pr-$2
    git pull $1 refs/pull-requests/$2/from:$3
    git checkout $3
    git reset --hard $4
    git checkout pr-$2
  }

  # get current branch name
  CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

  # check if branch is the same as PR branch and is pristine
  if [ "$CURRENT_BRANCH" == "$3" ]; then
    if [ -n "$(git status --porcelain)" ]; then
      echo ""
      echo "$(tput setaf 1)ERROR: Current branch is not pristine$(tput sgr0)"
      echo "Please stash or commit changes before proceeding"
      echo "  (use \"git stash\" to stash current changes)"
      echo "  (use \"git stash apply\" to retrieve current change when ready)"
      echo ""
      return 1
    fi
  else
    echo ""
    echo "$(tput setaf 1)ERROR: Incorrect destination branch for pull request$(tput sgr0)"
    echo "Please checkout $(tput setaf 5)$1/$3$(tput sgr0) before proceeding"
    echo "  (use \"git checkout <branch>\" to checkout)"
    echo ""
    return 1
  fi

  # get reference to last commit and pass into checkout function
  LAST_COMMIT="$(git rev-parse HEAD)"
  checkoutAndPull $1 $2 $3 $LAST_COMMIT
}

# Proxy functions
function proxyon(){
  echo "Enabling proxy for user ‘cole.gentry'..."
  echo -n "Please enter password:"
  read -es password
  export http_proxy="http://cole.gentry:$password@168.162.155.4:8080/"
  export https_proxy=$http_proxy
  export ftp_proxy=$http_proxy
  export rsync_proxy=$http_proxy
  export no_proxy="*.local, 169.254/16, 168.162.*, localhost, 127.0.0.1, 10.*, na.owa.*,  us-mal-*, sams-mal-*, ippdev*"
  echo -e "\nProxy environment enabled."
}
function proxyoff(){
  echo "Disabling proxy for user 'cole.gentry'..."
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

###################################
# Git aliases
###################################
alias gaa="git add -A"
alias ga="git add"
alias gc="git commit"
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
alias glp="git log --pretty"

###################################
# Some other nifty shortcuts
###################################
alias cddev="cd ~/Documents/proj"
alias chrome="open -a /Applications/Browsers/Google\ Chrome.app"
alias mou="open -a /Applications/mou.app"
alias subl="open -a /Applications/Sublime\ Text.app"
alias atom='open -a "/Applications/Atom.app"'

# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi
# PATH=/usr/local/apache2/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

#sets the proxy every time terminal opens
export HTTP_PROXY="http://local-http-proxy:8888"
export HTTPS_PROXY="http://local-http-proxy:8888"

export EDITOR=atom
export NVM_DIR="/Users/colegentry/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

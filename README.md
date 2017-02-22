![](image.png)

# Super Bash Settings

My personal custom .bash_prompt, .bashrc, and .bash_profile.

The .bash_prompt is based on Extravagant Zsh Prompt and a few others.

#### Supports:
* All Bash terminal applications

#### Basic View

![Basic View](http://i.imgur.com/QphIP5i.png)

## Installation

1. Open your home folder and find your existing `.bash_profile` and `.bash_prompt`. Then open them in your favorite text editor.

  :point_up: **Tip**: These may not exist. If not, go ahead and create the files in your user root `~`. Don't forget the leading "." in the file names.

2. Copy the contents of the `.bash_profile` and `.bash_prompt` from the repo versions into your files located at `~`. Then go ahead and save each file. 

3. Restart your terminal application or re-source your `.bash_profile`.

4. Enjoy the new styles and git functionality!

#### Included Aliases:

##### Misc Aliases
* `alias cddev="cd ~/Projects"`
* `alias search="cat ~/.bash_history | grep"`

##### Git Aliases
* `alias gaa="git add -A"`
* `alias ga="git add"`
* `alias gcm="git commit -m"`
* `alias gcv="git cz"`
* `alias gco="git checkout"`
* `alias gcob="git checkout -b"`
* `alias gbd="git branch -D"`
* `alias gf="git fetch"`
* `alias gpu="git pull"`
* `alias gph="git push"`
* `alias gm="git merge"`
* `alias gs="git status"`
* `alias gr="git remote -v"`
* `alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"`

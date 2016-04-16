export PATH=/usr/local/bin:$PATH:/usr/local/git/bin:/opt/local/bin:/Users/bub2000/script:/Library/PostgreSQL8/bin:/usr/local/mysql/bin
export PATH=$PATH:/opt/local/lib/postgresql83/bin
export PATH=$PATH:/Users/teejayvanslyke/bin
export PATH=$PATH:/Users/teejayvanslyke/src/tjvanslyke.com/bin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/opt/mysql/bin:$PATH

export EDITOR='vim'

# Short n sweet prompt
export PS1='\[\e[1;32m\]\W \$ >> \[\e[0m\]'

# Colorize ls
alias ls='ls -G'
alias reload='source ~/.bash_profile'
alias b='popd > /dev/null'

linerange() {
  sed -n "$2p" $1
}

alias ll='ls -la'

#=====================================================================# 
#     GIT ALIASES

alias gst="git status"
alias ga="git add ."
alias gpr='git pull --rebase'
alias gb="git branch"
alias gba="git branch -a"
alias gl="git pull"
alias gh="git push"
alias gd="git diff"
alias gdm="git diff | mate"
alias gc="git commit -v"
alias gca="git commit -a -v"
alias gk="gitk --all"
alias gn="nub ."

# Colorize Git
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto 

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

source ~/.psdeptrc

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
rvm use 2.1.5 > /dev/null # by default

# Writeroom clone (saves $24.99)
alias wr='mvim -S ~/.vim/writeroom.vim'

alias rsp='bundle exec rspec'
alias cuc='bundle exec cucumber'
alias rak='bundle exec rake'
alias mm='bundle exec middleman'
alias ev='bundle exec evergreen run'

alias zt='zeus test'
alias zc='zeus console'
alias zrak='zeus rake'
alias zr='zeus runner'

alias t='sh ~/bin/todo.sh'

alias glo='git log --pretty=oneline --abbrev-commit'

alias h='heroku'


alias tmux="TERM=screen-256color-bce tmux"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

source ~/.awsrc

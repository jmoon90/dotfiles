# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
BUNDLER_EDITOR=vim

#GC tuning
export RUBY_HEAP_FREE_MIN=1024
export RUBY_GC_HEAP_INIT_SLOTS=4000000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_GC_MALLOC_LIMIT=500000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

ZSH_THEME="lukerandall"

alias mrm="rake db:migrate&&rake db:rollback&&rake db:migrate&&rake"
alias ms="rake db:migrate:status"
alias flush="echo 'flush_all' | nc localhost 11211"
alias git-scrub='git branch --merged | grep -v master | xargs git branch -d'
alias ctags="ctags -R ."

alias rs="rails s"
alias gs="git status"
alias gp="git pull origin master"
alias boom="git add -A; git commit --amend"
alias be="bundle exec"
alias grc="git rebase --continue"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

plugins=(rails git ruby autojump colorize brew)

source $ZSH/oh-my-zsh.sh
#chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

ulimit -n 1024

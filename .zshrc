# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export EDITOR=vi

#GC tuning
export RUBY_HEAP_FREE_MIN=1024
export RUBY_GC_HEAP_INIT_SLOTS=4000000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_GC_MALLOC_LIMIT=500000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

ZSH_THEME="robbyrussell"

alias fs="bundle exec foreman start"
alias mrm="rake db:migrate&&rake db:rollback&&rake db:migrate&&rake"
alias ms="rake db:migrate:status"
alias flush="echo 'flush_all' | nc localhost 11211"
alias git-scrub='git branch --merged | grep -v master | xargs git branch -d'
alias ctags="ctags -R ."

alias rt="ruby -I.:test"

alias sc='open /Applications/StarCraft\ II/StarCraft\ II.app'
alias rs="rails s"
alias gs="git status"
alias gp="git pull origin master"
alias boom="git add -A; git commit --amend"
alias be="bundle exec"
alias bo="bundle open"
alias bl="bundle install --local"
alias grc="git rebase --continue"

alias CHE="/Users/johnmoon/Documents/livingsocial/checkout;bundle exec foreman start"
alias SHO="/Users/johnmoon/Documents/livingsocial/shopmobile; STEPFORD_LOCAL=true bundle exec foreman start"
alias PRO="/Users/johnmoon/Documents/livingsocial/products; STEPFORD_LOCAL=true bundle exec foreman start"
alias MOB="/Users/johnmoon/Documents/livingsocial/mobile; STEPFORD_LOCAL=true bundle exec rails s thin -p 3029"
alias ESC="/Users/johnmoon/Documents/livingsocial/escapes; fs"
alias TRA="/Users/johnmoon/Documents/livingsocial/travel-service; fs"
alias DEA="/Users/johnmoon/Documents/livingsocial/deals; bundle exec foreman start"
alias BRO="/Users/johnmoon/Documents/livingsocial/browse; fs"
alias SSO="/Users/johnmoon/Documents/livingsocial/sso-frontend; STEPFORD_LOCAL=true fs"
alias FAK="/Users/johnmoon/Documents/livingsocial/fakeybiller; fs"
alias PAY="/Users/johnmoon/Documents/livingsocial/payments; fs"
alias ACC="/Users/johnmoon/Documents/livingsocial/accounts; bundle exec rackup -p 3015 -s puma"
alias STE="STEPFORD_LOCAL=true bundle exec foreman start"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

plugins=(rails git sublime osx rvm ruby gradle heroku autojump colorize brew)

source $ZSH/oh-my-zsh.sh

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# User configuration
export PATH="/Users/johnmoon/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

export NVM_DIR="/Users/johnmoon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

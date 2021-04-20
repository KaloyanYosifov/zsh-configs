alias ll="ls -laGh"

#github
alias gs="git status"
alias delLGB="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"

#Laravel
alias art="php artisan"

# php
alias phpstan="XDEBUG_MODE=off ./vendor/bin/phpstan analyse"
alias csfix="XDEBUG_MODE=off ./vendor/bin/php-cs-fixer fix"
alias phpunit="XDEBUG_MODE=off ./vendor/bin/phpunit"
alias pest="XDEBUG_MODE=off ./vendor/bin/pest"
alias pf="XDEBUG_MODE=off phpunit --filter"
alias DEBUG_LINE="export XDEBUG_CONFIG=\"idekey=PHPSTORM\";export XDEBUG_SESSION=\"PHPSTORM\""
alias STOP_DEBUG_LINE="unset XDEBUG_CONFIG;unset XDEBUG_SESSION"
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
alias checkports="sudo lsof -iTCP -sTCP:LISTEN -n -P"


# cordova
localCordova="./node_modules/.bin/cordova"
alias cordova="$(if [ -f "$localCordova" ]; then echo "$localCordova"; else echo "cordova"; fi)"

which nvim 2>&1 > /dev/null

if [ $? -eq 0 ]; then
    alias vim="nvim"
fi

# Git aliases
git config --global alias.co checkout

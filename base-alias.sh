alias ll="ls -laGh"

#github
alias gs="git status"

#Laravel
alias art="php artisan"

# php
alias phpstan="./vendor/bin/phpstan analyse"
alias csfix="./vendor/bin/php-cs-fixer fix"
alias phpunit="./vendor/bin/phpunit"
alias pest="./vendor/bin/pest"
alias pf="phpunit --filter"
alias DEBUG_LINE="export XDEBUG_CONFIG=\"idekey=PHPSTORM\";export export XDEBUG_SESSION=\"PHPSTORM\""

# cordova
localCordova="./node_modules/.bin/cordova"
alias cordova="$(if [ -f "$localCordova" ]; then echo "$localCordova"; else echo "cordova"; fi)"

which nvim 2>&1 > /dev/null

if [ $? -eq 0 ]; then
    alias vim="nvim"
fi

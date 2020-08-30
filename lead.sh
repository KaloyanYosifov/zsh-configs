PATH="$PATH:$HOME/.composer/vendor/bin"
fpath=(/usr/local/share/zsh-completions $fpath)
ZSH_DIR="$HOME/.zsh"

if [ -d $ZSH_DIR ]; then
   for envFile in $ZSH_DIR/*; do
        if [ $envFile = '.' ] || [ $envFile = '..' ]; then
           continue
        fi

        source $envFile
   done
fi

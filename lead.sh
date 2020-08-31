ZSH_THEME="gentoo"
PATH="$PATH:$HOME/.composer/vendor/bin"
fpath=(/usr/local/share/zsh-completions $fpath)
ZSH_DIR="$HOME/.zsh"

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

skipFiles=("." ".." "lead.sh" ".git" ".gitignore" "environments-mac" "environments-linux")

if [ -d $ZSH_DIR ]; then
   for envFile in $ZSH_DIR/*; do
	containsElement $(basename $envFile) "${skipFiles[@]}"

        if [ $? = 0 ]; then
           continue
        fi

        source $envFile
   done
fi

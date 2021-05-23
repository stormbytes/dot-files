PATH=/opt/homebrew/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin/
export PATH

# Add ~/Desktop to PATH
export PATH="$PATH:$HOME/Desktop"

autoload -U colors && colors
# No Working Path
# PROMPT="%{$fg[blue]%}→ %{$reset_color%}"
# Shows working path
# PROMPT="%{$fg[grey]%}[%{$fg[white]%}%~%{$fg[grey]%}] %{$fg[blue]%}→ %{$reset_color%}"
PROMPT="%{$fg[grey]%}[%{$fg[white]%}%~%{$fg[grey]%}]"$'\n'"%{$fg[blue]%}→ %{$reset_color%}"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




# Aliases
alias ls+files='ls -p | grep -v /'
alias ls='ls -lG'
alias npmls='npm ls --depth=0'
alias npmlsg='npm ls -g --depth=0' #npm top level pkgs
alias usb="ls /dev/*usb*"
alias com="picocom"
alias files="find . -type f | wc -l"
alias mongostart="brew services start mongodb-community"
alias mongostop="brew services stop mongodb-community"
alias ino="arduino-cli"
alias tree2="tree -L 2"
alias tree="tree -I node_modules"
alias sbj="date | md5 | cut -c -8 | pbcopy"
alias vim="nvim"

alias python="python3"
alias pip="pip3"

# Services
alias mongostart="brew services start mongodb-community"
alias mongostop="brew services stop mongodb-community"
alias mysqlstart="brew services start mysql"
alias mysqlstop="brew services stop mysql"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# source aliases
ALIASFILE=~/.aliasesrc
source $ALIASFILE
function add_alias() {
    if [[ -z $1 || -z $2 || $# -gt 2 ]]; then
        echo usage:
        echo "\t\$$0 ll 'ls -l'"
    else
        echo "alias $1='$2'" >> $ALIASFILE
        echo "alias ADDED to $ALIASFILE"
    fi
}

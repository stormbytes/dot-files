autoload -U colors && colors
PROMPT="%{$fg[blue]%}→ %{$reset_color%}" 

# Pimped out ZSH prompt (same as above with [path])
# PROMPT="
# %{$fg[grey]%}[%{$fg[white]%}%~%{$fg[grey]%}] 
# %{$fg[blue]%}→ %{$reset_color%}" 

PATH=$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/bin:/usr/local/sbin:/bin:/sbin/:/usr/bin:/usr/sbin


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# example
# alias somealias='something longer'
alias ls='ls -lG'
alias npmls='npm list -g --depth=0'

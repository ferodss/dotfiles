
# Tmux sessions
if [[ -z "$TMUX" ]]; then
    tmux new-session -d -s me
    tmux new-session -d -s vaniday-api
    tmux new-session -d -s vaniday-admin
    tmux new-session -d -s vaniday-calendar
    tmux new-session -d -s vaniday-payment
    tmux select-window -t me:0
    tmux attach-session -t me
fi

# Vim as default editor
export EDITOR="vim"

# PS1 customized
if [ -f $HOME/.bash_ps1 ]; then
    source $HOME/.bash_ps1
fi

# Colored ls
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# bash_completion from Homebrew
if [ -f $(brew --prefix)/etc/bash_completion  ]; then
      . $(brew --prefix)/etc/bash_completion
fi

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# Enable xDebug from command line
export XDEBUG_CONFIG="idekey=PHPSTORM"

alias grep="grep --color=auto"
alias phps="php -S 127.0.0.1:9000"

# PHPBrew
source /Users/ferodss/.phpbrew/bashrc

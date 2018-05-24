
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

# Vim as default editor
export EDITOR="vim"

if [ -f /usr/local/share/git-core/contrib/completion/git-completion.bash ]; then
    . /usr/local/share/git-core/contrib/completion/git-completion.bash
fi

if [ -f /usr/local/share/git-core/contrib/completion/git-prompt.sh ]; then
    . /usr/local/share/git-core/contrib/completion/git-prompt.sh
fi

# PS1 customized
if [ -f $HOME/.bash_ps1 ]; then
    source $HOME/.bash_ps1
fi

# Colored ls
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# bash_completion from Homebrew
if [ -f $(brew --prefix)/etc/bash_completion  ]; then
      . $(brew --prefix)/etc/bash_completion
fi

# Homebrew
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# Enable xDebug from command line
export XDEBUG_CONFIG="idekey=PHPSTORM"
export XDEBUG_REMOTE_HOST="docker.for.mac.localhost"

# PHPBrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Golang
export GOPATH=$HOME/Projects/go
export PATH=$GOPATH/bin:$PATH


# Expand PATH
set -gx PATH ~/bin /usr/local/sbin $PATH

set -gx CDPATH ~/Projects $CDPATH

# Vim as default editor
set -x EDITOR vim

set fish_color_command white
set fish_color_param white
set fish_color_operator white

function fish_greeting 
    cowsay \t \"How many people work here\?\" \n\n \t \"Oh, about half.\"
end

# XDebug
set -x XDEBUG_CONFIG "idekey=PHPSTORM"
set -x XDEBUG_REMOTE_HOST "docker.for.mac.localhost"


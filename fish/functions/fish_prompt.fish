
function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end

    # User at
    set_color green
    printf '%s' $USER
    set_color brblack
    printf ' at '
    set_color normal

    # Host
    set_color green
    echo -n (prompt_hostname)
    set_color brblack

    # In path
    printf ' in '
    set_color purple
    printf '%s' (prompt_pwd)
    set_color normal

    # Git status
    _git_prompt

    # Time and finishing
    set_color brblack
    printf ' %s ' (date "+%H:%m")
    printf '~> '
    set_color normal
end



function _git_prompt
    set -l branch (_git_branch_name)
    if test -z $branch
        return
    end

    set -l color_git_clean (set_color green)
    set -l color_git_dirty (set_color red)
    set -l color_normal (set_color $fish_color_normal)

    set -l state_color $color_git_clean
    set -l dirty (_is_git_dirty)

    if test -n "$dirty"
        set state_color $color_git_dirty
    end

    echo -n " $state_color($branch)$color_normal"
end

function _git_branch_name
    set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)
    if set -q branch[1]
        echo (string replace -r '^refs/heads/' '' $branch)
    else
        echo (git rev-parse --short HEAD 2>/dev/null)
    end
end

function _is_git_dirty
    echo (git status -s --ignore-submodules=dirty ^/dev/null)
end

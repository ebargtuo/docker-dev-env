PS1_PWD_MAX=15
__pwd_ps1() {
    local home_colour='\[\e[0;33m\]'
    local outside_colour='\[\e[01;33m\]'
    local clear_colour='\[\e[00m\]'
    local pwd=$(echo -n $PWD | sed -e "s|${HOME}|~|" -e "s|\(/[^/]*/\).*\(/.\{${PS1_PWD_MAX}\}\)|\1...\2|";)

    if [[ "$PWD" =~ ^"$HOME".* ]]; then
        echo "$home_colour$pwd$clear_colour"
    else
        echo "$outside_colour$pwd$clear_colour"
    fi
}

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

PROMPT_COMMAND='__git_ps1 "\[\e[01;34m\]\u@\h $(__pwd_ps1)" "\[\e[00m\]$ "'


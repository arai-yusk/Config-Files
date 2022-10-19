# show job count
PS1=${PS1}'$([ \j -gt 0 ] && echo "[\j] ")'

# git settings
if [ -e ~/git-completion.bash ] && \
   [ -e ~/git-prompt.sh ]; then
    . ~/git-completion.bash
    . ~/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    PS1=${PS1}'$(__git_ps1 "(%s) ")'
fi

export EDITOR=vim
export VISUAL=view

# disable ctrl+s
if [[ -t 0 ]]; then
    stty stop undef
    stty start undef
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi


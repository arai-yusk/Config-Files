alias ls='ls --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -bv'

alias grep='grep --color=auto'

# pbcopy like Mac
if command -v xsel &>/dev/null; then
    alias pbcopy="xsel --clipboard --input"
fi

# tree
alias tree="tree -C -L 1"

# jobs show pid
alias jobs='jobs -l'

# colordiff
if command -v colordiff &>/dev/null; then
    alias diff='colordiff -u'
else
    alias diff='diff -u'
fi


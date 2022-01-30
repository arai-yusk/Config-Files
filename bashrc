# show job count
PS1=${PS1}'$([ \j -gt 0 ] && echo "[\j] ")'

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi


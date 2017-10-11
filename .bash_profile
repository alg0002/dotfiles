# prompt
#source ~/.git-prompt.sh
#source ~/../usr/etc/bash_completion.d/git-completion.bash

RED="\[\e[31m\e[40m\]"
GREEN="\[\e[32m\e[40m\]"
YELLOW="\[\e[33m\e[40m\]"
BLUE="\[\e[34m\e[40m\]"
RESET="\[\e[0m\]"

export PS1="${GREEN}\D{%m/%d %H:%M:%S} ${YELLOW}\w${BLUE}`__git_ps1`${RESET}\n$ "


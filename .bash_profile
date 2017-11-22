# prompt
#source ~/.git-prompt.sh
#source ~/../usr/etc/bash_completion.d/git-completion.bash
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
PURPLE="\[$(tput setaf 5)\]"
RESET="\[$(tput sgr0)\]"
export PS1="\n${GREEN}\D{%m/%d %H:%M:%S} ${PURPLE}\u@\h ${YELLOW}\w${BLUE}`__git_ps1`${RESET}\n$ "

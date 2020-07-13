# For Windows gitbash

PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[0;30;42m\]'  # change style to normal;black;green
PS1="$PS1"' \D{%m/%d} '        # date (mm/dd)
PS1="$PS1"'\t '                # time (hh:mi:ss)
PS1="$PS1"'\[\033[0;32;102m\]' # change style to normal;green;lightgreen
PS1="$PS1"''                  # sankaku
PS1="$PS1"'\[\033[0;30;102m\]' # change style to normal;black;lightgreen
PS1="$PS1"' \w '               # current working directory
PS1="$PS1"'\[\033[0;92;44m\]'  # change style to normal;lightgreen;blue
PS1="$PS1"''                  # sankaku
if test -z "$WINELOADERNOEXEC"
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
		PS1="$PS1"'\[\033[0;37;44m\]'  # change style to normal;gray;blue
		PS1="$PS1"'`__git_ps1 " %s "`' # bash function
		PS1="$PS1"'\[\033[0;34;49m\]'  # change style to normal;blue;default
		PS1="$PS1"''                  # sankaku
	fi
fi
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[0;30;47m\]'  # change style to normal;black;gray
PS1="$PS1"'$'                  # prompt: always $
PS1="$PS1"'\[\033[0;37;49m\]'  # change style to norma;gray;default
PS1="$PS1"' '                 # sankaku
PS1="$PS1"'\[\033[0m\]'        # change style to default

# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# It should be noted that I use git for windows which you can find at https://git-scm.com/downloads

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

# Used to clear and exit program
alias x='clear'
alias xx='exit'

# GIT ALIASES

# adds all the changes to staging.
alias gaa='git add -A'

# Creates a new commit with all staged files and uses the given message as the commit's message.
# Example: gcm "This is my commit message describing the changes"
alias gcm='git commit -m'

# git status
alias gs='git status'

# git add
alias ga='git add'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac

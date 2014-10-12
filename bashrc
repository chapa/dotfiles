umask 022

export HISTCONTROL="ignoreboth"
export CLICOLOR=1

RESET="\[\e[0m\]"
CYAN="\[\e[0;36m\]"
GRAY="\[\e[0;92m\]"
WHITE="\[\e[0;37m\]"
RED="\[\e[0;31m\]"
YELLOW="\[\e[0;93m\]"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1 /'
}

export PS1="${CYAN}\u${RESET} ${RED}\w${YELLOW} \$(parse_git_branch)${WHITE}\n\$ "
trap "tput sgr0" DEBUG

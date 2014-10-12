	# Including files

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /opt/boxen/env.sh ]; then
	. /opt/boxen/env.sh
fi

	# Editing $PATH
	
if [ -d ~/Public/bin ] ; then
	PATH="$PATH:~/Public/bin"
fi

if [ -d ~/.composer/vendor/bin ] ; then
	PATH="$PATH:~/.composer/vendor/bin"
fi

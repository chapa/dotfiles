	# Including files

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

if [ -f /opt/my-puppet/env.sh ]; then
	source /opt/my-puppet/env.sh
fi

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	source /usr/local/etc/bash_completion.d/git-completion.bash
fi

	# Editing $PATH
	
if [ -d ~/Public/bin ] ; then
	PATH="$PATH:~/Public/bin"
fi

if [ -d ~/.composer/vendor/bin ] ; then
	PATH="$PATH:~/.composer/vendor/bin"
fi

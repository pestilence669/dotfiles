# vim: set ts=4 sw=4 noet:

[ -e ~/.bashrc ] && . ~/.bashrc

export PATH="/usr/local/bin:$PATH"

if [ -d ~/.bash_it ]; then
	export BASH_IT=~/.bash_it
	export BASH_IT_THEME="zork"
	. $BASH_IT/bash_it.sh
fi

# more custom shit
[ -e ~/.bashrc_custom ] && . ~/.bashrc_custom

# iterm2 shell integration
[ -f ~/.iterm2_shell_integration.bash ] && . ~/.iterm2_shell_integration.bash

# CUDA
[ -d /usr/local/cuda/lib ] && export DYLD_LIBRARY_PATH="/usr/local/cuda/lib:$DYLD_LIBRARY_PATH"

# Anaconda3
[ -d ~/anaconda3/bin ] && export PATH="$HOME/anaconda3/bin:$PATH"

# gcloud
[ -f ~/google-cloud-sdk/path.bash.inc ] && . ~/google-cloud-sdk/path.bash.inc

# Bash completion (set locale for errors on macOS)
#export LC_CTYPE=C
#export LANG=C
PREFIX=${PREFIX:-/usr}
for p in "$PREFIX" "$PREFIX/local"; do
	[ -f "$p"/etc/bash_completion ] && . "$p"/etc/bash_completion
done
[ -f ~/google-cloud-sdk/completion.bash.inc ] && . ~/google-cloud-sdk/completion.bash.inc

export GPG_TTY=$(tty)

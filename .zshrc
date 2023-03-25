# set & enable colors for ls & tab completion
export CLICOLOR=1
export LSCOLORS=excxhxfxgxegedabagacad
export LS_COLORS='di=34:ln=32:so=37:pi=35:ex=36:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

export HOMEBREW_NO_AUTO_UPDATE=1 # WTF

# tab completion for prompt
COMPLETION_WAITING_DOTS="true"
autoload -U compinit promptinit
compinit

autoload -Uz manydots-magic     # allow "cd ..." w/ expansion instead of "cd ../.."
manydots-magic                  # ""
setopt autocd                   # allow dropping of "cd" e.g. "...."
setopt interactive_comments     # allow '#' comments in shell, not just scripts
bindkey \^U backward-kill-line  # restore Bash functionality / do not clear whole line

if [ $TERM_PROGRAM != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config=~/.ohmy.json)"
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ll='ls -lah'
alias l='ls -lh'
alias tf='cd ~/tf && jupyter-notebook ~/tf'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/paul/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/paul/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/paul/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="~/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


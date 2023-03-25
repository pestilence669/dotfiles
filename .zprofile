eval "$(/opt/homebrew/bin/brew shellenv)"

HIST_STAMPS="yyyy-mm-dd"

# pyenv & virtualenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi


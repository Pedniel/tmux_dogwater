# Disable XON/XOFF flow control so Ctrl-S can be used for search
stty -ixon

# If not running interactively, don't do anything
[[ -o interactive ]] || return

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias grep='grep --color=auto'

export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export BROWSER=brave-browser

# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if [[ -o interactive ]]; then
    fastfetch --logo arch --separator "  "
fi

eval "$(starship init zsh)"

if [[ -z "$TMUX" ]] && [[ -o interactive ]]; then
    exec tmux
fi

autoload -U compinit
compinit

# Enable the navigable visual menu
zstyle ':completion:*' menu select

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

source ~/.myaliases

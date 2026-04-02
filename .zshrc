if [[ -z "$TMUX" ]] && [[ $- == *i* ]]; then
    exec tmux
fi

fastfetch

# This file contains some bashrc examples to use

# BEGIN TERMINAL GRAPHICS
# ONLY RUN TMUX IF NOT RUNNING YET
if [[ -z "$TMUX" ]] && [[ $- == *i* ]]; then
    exec tmux
fi

fastfetch

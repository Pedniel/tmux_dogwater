if status is-interactive
    # If TMUX is not set or is empty
    if not set -q TMUX; or test -z "$TMUX"
        exec tmux
    end
    
    # Run fastfetch for interactive shells
    fastfetch
end

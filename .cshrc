# Check if the shell is interactive
if ( $?prompt ) then
    # Check if we are NOT inside a tmux session
    if ( ! $?TMUX ) then
        exec tmux
    endif
    
    # Run fastfetch (this executes inside tmux once it loads)
    fastfetch
endif

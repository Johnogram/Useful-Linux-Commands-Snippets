## Copy mode

1) enter copy mode using `Control+b` + `[`
2) navigate to beginning of text, you want to select and hit `Control+Space`
3) move around using `arrow keys` to select region
4) when you reach end of region simply hit `Alt+w` to copy the region
5) now `Control+b` + `]` will paste the selection

## Sessions

    :new<CR>  new session
    s  list sessions
    $  name session

## Windows (tabs)

    c           new window
    ,           name window
    w           list windows
    f           find window
    &           kill window
    .           move window - prompted for a new number
    :movew<CR>  move window to the next unused number

## Panes (splits)

    %  horizontal split
    "  vertical split
    
    o  swap panes
    q  show pane numbers
    x  kill pane
    ⍽  space - toggle between layouts

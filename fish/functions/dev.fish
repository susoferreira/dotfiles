function add-dev
    echo $(pwd) >>~/.config/tmux-session-list
end

function dev
    set folder $(cat ~/.config/tmux-session-list | fzf)
    cd $folder
    tmux new -A -s "$folder"
end

#!/bin/bash
read choice
if [[ -n choice ]]; then
    case "$choice" in
        "stock analyzer"|"Stock Analyzer") hyprctl dispatcher exec "kitty -d /mnt/data/Javascript/stock_analyzer/stock-analyzer/ nvim ."
        ;;
    "code") hyprctl dispatcher exec "kitty -e nvim ~/code/"
        ;;   
        'superfile') hyprctl dispatcher exec "kitty -d ~/code/superfile/ nvim ."
        ;;
    'odyss') hyprctl dispatcher exec "kitty -d ~/code/odyss/ nvim ."
        ;;
    esac
fi

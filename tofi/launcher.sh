!/bin/bash
read choice
if [[ -n choice ]]; then
  case "$choice" in
    "neovim"|"Neovim"|"vim"|"nvim"|"gvim") hyprctl dispatcher exec "kitty -e nvim"
    ;;
    "htop"|"Htop")hyprctl dispatcher exec "kitty -e htop"
    ;;
    "spf"|"Spf") hyprctl dispatcher exec "kitty -e env EDITOR=nvim spf"
    ;;
    "btop"|"Btop") hyprctl dispatcher exec "kitty -e btop"
    ;;
  /opt/google/chrome/google-chrome*) hyprctl dispatcher exec "/opt/google/chrome/google-chrome --profile-directory=Default --app-id=beencbhgfhcpdfcamlclakjciajlnhpa"
    ;;
    "onlyOffice"|"OnlyOffice") hyprctl dispatcher exec "kitty -e onlyoffice"
    ;;
    *) uwsm app "$choice"
    ;;
  esac
fi

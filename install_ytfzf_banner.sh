#!/bin/bash

BASHRC="$HOME/.bashrc"

# Prüfen, ob der Alias 'yt=' schon in der .bashrc steht
if grep -q "^alias yt=" "$BASHRC"; then
    echo "Hinweis: Ein 'alias yt=' existiert bereits in deiner $BASHRC."
    echo "Bitte entferne ihn zuerst manuell (nano ~/.bashrc), falls du ihn ersetzen möchtest."
    exit 1
fi

# Leerzeile und das Banner exakt 1:1 an die ~/.bashrc anhängen
cat << 'EOF' >> "$BASHRC"

# Horizontal zentriertes YOUTUBE-Banner in Pink-Roten Pastelltönen
alias yt='clear; \
cols=$(tput cols 2>/dev/null || echo $COLUMNS); \
banner_width=74; \
pad_left=$(( (cols - banner_width) / 2 )); \
[ $pad_left -lt 0 ] && pad_left=0; \
printf "%${pad_left}s\033[38;5;211m##########################################################################\n" ""; \
printf "%${pad_left}s\033[38;5;211m#                                                                        #\n" ""; \
printf "%${pad_left}s\033[38;5;211m#     \033[38;5;210m██╗   ██╗ ██████╗ ██╗   ██╗████████╗██╗   ██╗██████╗ ███████╗%*s\033[38;5;211m#\n" "" 6 ""; \
printf "%${pad_left}s\033[38;5;211m#     \033[38;5;211m╚██╗ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝%*s\033[38;5;211m#\n" "" 6 ""; \
printf "%${pad_left}s\033[38;5;211m#      \033[38;5;217m╚████╔╝ ██║   ██║██║   ██║   ██║   ██║   ██║██████╔╝█████╗%*s\033[38;5;211m#\n" "" 8 ""; \
printf "%${pad_left}s\033[38;5;211m#       \033[38;5;218m╚██╔╝  ██║   ██║██║   ██║   ██║   ██║   ██║██╔══██╗██╔══╝%*s\033[38;5;211m#\n" "" 8 ""; \
printf "%${pad_left}s\033[38;5;211m#        \033[38;5;224m██║   ╚██████╔╝╚██████╔╝   ██║   ╚██████╔╝██████╔╝███████╗%*s\033[38;5;211m#\n" "" 6 ""; \
printf "%${pad_left}s\033[38;5;211m#        \033[38;5;224m╚═╝    ╚═════╝  ╚═════╝    ╚═╝    ╚═════╝ ╚═════╝ ╚══════╝%*s\033[38;5;211m#\n" "" 6 ""; \
printf "%${pad_left}s\033[38;5;211m#                                                                        #\n" ""; \
printf "%${pad_left}s\033[38;5;211m##########################################################################\n" ""; \
printf "\033[0m"; \
sleep 1.2; FZF_DEFAULT_OPTS="--height=100% --layout=reverse" command ytfzf --pages=3 -t'
EOF

echo "Erfolgreich in $BASHRC eingetragen!"
echo "Führe jetzt 'source ~/.bashrc' aus (oder öffne ein neues Terminal) und tippe 'yt'."

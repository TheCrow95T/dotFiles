# alias cvim="nvim -u ~/.config/cvim/init.lua"
alias deskreen="~/AppImage/Deskreen-2.0.4.AppImage --enable-features=WebRTCPipeWireCapturer"
alias suwayomi="cd ~/AppImage/Suwayomi-Server-v1.1.1-r1535-linux-x64/; sh suwayomi-server.sh &; cd -"
alias penpotUp="cd ~/Documents/Docker/penpot;sudo docker compose -p penpot -f docker-compose.yaml up -d"
alias penpotDw="cd ~/Documents/Docker/penpot;sudo docker compose -p penpot -f docker-compose.yaml down"
alias lvim="NVIM_APPNAME=lvim nvim"

set -Ux ZK_NOTEBOOK_DIR "$HOME/Documents/Notes"

export PATH="$PATH:/home/thecrow95t/.local/bin"
export EDITOR=vim
export XMODIFIERS=@im=fcitx
# export QT_IM_MODULES="wayland;fcitx;ibus"

# use oh-my-posh for fish and powerlevel10k_classic.omp.json theming
# oh-my-posh init fish --config ~/.config/fish/theme.omp.json | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

# load homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

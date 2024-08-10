alias pacman="sudo pacman"
alias reload="source $HOME/.config/fish/config.fish"
alias fish_config="nvim $HOME/.config/fish/config.fish"
alias ls="exa -l -a -h --group-directories-first"
alias cat="bat"

eval (ssh-agent -c)

source "$HOME/.cargo/env.fish"

# Set up fzf key bindings
fzf --fish | source

fish_add_path /home/p4rad0x/.spicetify

# Starship
starship init fish | source

# Nix Shell
. /home/p4rad0x/.nix-profile/etc/profile.d/nix.fish

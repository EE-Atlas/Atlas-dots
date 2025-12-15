# Setup zim: https://github.com/zimfw/zimfw
ZIM_CONFIG_FILE=~/.config/zsh/.zimrc
ZIM_HOME=~/.cache/zim

## Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

## Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init
fi

## Initialize modules.
source ${ZIM_HOME}/init.zsh

# Aliases
alias fuck="sudo"
alias untar="tar -xf"
alias bye="shutdown -h now"
alias loop="reboot"
alias grep="grep --color=auto"
alias trash="sudo pacman -Rns $(pacman -Qdtq)"
alias fixsudo="faillock --reset"

# Add cargo binaries
export PATH=$PATH:~/.cargo/bin/

# Fastfetch
clear && fastfetch

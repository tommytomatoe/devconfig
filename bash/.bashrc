#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -v'
PS1='[\u@\h \W]\$ '

# Pacman alias examples
alias pacman='sudo pacman'
alias pacupg='pacman -Syu'        # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pacin='pacman -S'           # Install specific package(s) from the repositories
alias pacins='pacman -U'          # Install specific package not from the repositories but from a file 
alias pacre='pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'             # Search for package(s) in the repositories
alias pacloc='pacman -Qi'              # Display information about a given package in the local database
alias paclocs='pacman -Qs'             # Search for package(s) in the local database

# Additional pacman alias examples
alias pacupd='pacman -Sy && sudo abs'     # Update and refresh the local package and ABS databases against repositories
alias pacinsd='pacman -S --asdeps'        # Install given package(s) as dependencies of another package
alias pacmir='pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
alias paccle='pacman -Rns $(pacman -Qqtd)'

# sudo vi
alias vis='sudo vim'
# sudo hdparm
alias hdparm='sudo hdparm'
# reboot
alias reboot='sudo reboot'
alias shutd='systemctl poweroff'
alias cd360='cd ~/git/cs360'
alias clm='clear && make'
alias y='sudo yaourt'
alias wm='sudo wifi-menu'
alias systemctl='sudo systemctl'
alias netctl='sudo netctl'
alias netutk='netcfg wlan0-ut-open'
alias pair='sudo pairing_tool'
alias pingy='ping -c 3 www.google.com'
alias agpp='arm-elf-g++'
alias agdb='arm-elf-gdb'
alias arun='arm-elf-run'
alias aas='arm-elf-as -marm7tdmi --gdwarf2'
alias ald='arm-elf-ld'
alias mc='make clean'
alias m='make'
alias ipdown='sudo ip link set wlp3s0 down'
alias netup='netctl start wlp3s0-ut-open'
alias iprestart='ipdown && netup'

export CCACHE_DIR=/tmp/ccache
export DE=kde
export PATH=${PATH}:$HOME/android/sdk/tools:$HOME/android/sdk/platform-tools:$HOME/bin
export XAUTHORITY=/home/tommy/.Xauthority

# export TERM='xterm-256color'
eval `dircolors ~/.dircolors`

function _update_ps1() {
   export PS1="$(~/bin/powerline-bash.py $?)"
}

function _stock_ps1() {
    export PS1="[\u@\h \W]\$ "
}

alias ps1git='export PROMPT_COMMAND="_update_ps1"'
alias ps1='export PROMPT_COMMAND="_stock_ps1"'

alias pacaur='sudo -E packer -Syu --auronly'
alias svn-a='svn add --force * --auto-props --parents --depth infinity -q'
alias status='echo git status && git status && echo && echo svn status && svn status'

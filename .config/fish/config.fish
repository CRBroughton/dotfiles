if status is-interactive
    # Commands to run in interactive sessions can go here
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias vgit='SDL_VIDEODRIVER=x11 gource'
# variables
# factorio wayland support
set -Ux SDL_VIDEODRIVER wayland
starship init fish | source

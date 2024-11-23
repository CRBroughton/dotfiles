if status is-interactive
    # Commands to run in interactive sessions can go here
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias vgit='SDL_VIDEODRIVER=x11 gource'
alias stmux='tmux new-session \; split-window -h \; split-window -v \; attach'
# variables
# factorio wayland support
set -Ux SDL_VIDEODRIVER wayland

# Setup Volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# asdf - elixir and erlang
source ~/.asdf/asdf.fish

# initialise Starship Terminal
starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

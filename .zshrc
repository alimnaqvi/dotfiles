# .zshrc

# oh-my-zsh should come first, if it is installed
if [[ -d ~/.oh-my-zsh ]]; then
    . ~/dotfiles/oh_my/oh-my-zsh.zshrc
fi

# User specific aliases and functions for bash and zsh
if [ -d ~/dotfiles/._shrc.d ]; then
    for rc in ~/dotfiles/._shrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# If some .zshrc settings should only apply locally
if [ -d ~/.zshrc.d ]; then
    for rc in ~/.zshrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# do not clutter this file
# anything below this should move to one of the above files/directories

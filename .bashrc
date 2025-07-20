# .bashrc

# oh-my-bash should come first, if it is installed
if [[ -d ~/.oh-my-bash ]]; then
    . ~/dotfiles/oh_my/oh-my-bash.bashrc
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions for bash and zsh
if [ -d ~/dotfiles/._shrc.d ]; then
    for rc in ~/dotfiles/._shrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# If some .bashrc settings should only apply locally
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# do not clutter this file
# anything below this should move to one of the above files/directories

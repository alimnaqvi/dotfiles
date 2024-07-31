# Set vim as default editor
export EDITOR=vim
export VISUAL=vim

# Read aliases from a separate file
if [ -f ~/dotfiles/.aliases ]; then
    . ~/dotfiles/.aliases
fi


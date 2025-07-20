# My Linux (and macOS) configuration files (dotfiles)

This repository contains my personal `.bashrc`, `.zshrc`, `.gitconfig`, `.vimrc`, etc. The goal is easy portability to any UNIX-like environment I am using, whether its bare metal, WSL, docker, or virtual machine, etc.

You are free to copy and use the contents of this repository if you like.

## Usage

Clone this repo in the home directory:

```bash
cd ~ && git clone git@github.com:alimnaqvi/dotfiles.git
```

The existing dotfiles (`~/.bashrc`, `~/.zshrc`, `~/.gitconfig`, `~/.vimrc`) must now be deleted and replaced with symbolic links to the files in this repository. Of course back up anything before deleting, and copy anything useful to the new ones.

```bash
rm ~/.bashrc ~/.zshrc ~/.gitconfig ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

## Logic of `.bashrc` and `.zshrc`

My policy is to keep the main `.bashrc` and `.zshrc` clutter-free and be able to use the exact same dotfile on all UNIX-like systems.

The `.bashrc` and `.zshrc` files don't change across systems — they simply look for any files in the directories `~/dotfiles/._shrc.d/`, `~/.bashrc.d/`, and `~/.zshrc.d/`. All content in these files is loaded into `.bashrc` and `.zshrc`.

Files in the directory `~/dotfiles/._shrc.d/` contain conditionals to add any differing configurations, such as those that should only apply in WSL environment or macOS, etc.

Anything that should only apply locally (not carried across machines) should be included in the directories `~/.bashrc.d/` and `~/.zshrc.d/`.

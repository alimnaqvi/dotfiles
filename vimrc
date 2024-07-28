" plugin manager vim-plug
call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'morhetz/gruvbox'

call plug#end()

" disable vi compatibility (emulation of old bugs)
set nocompatible

" quick header inclusion
iabbrev stdio #include <stdio.h>
iabbrev stdlib #include <stdlib.h>

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" turn line numbers on
set number

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Enable mouse support
set mouse=a

" Show command in bottom bar
set showcmd

" Highlight current line
set cursorline

" Visual autocomplete for command menu
set wildmenu

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" colorscheme wombat256

colorscheme gruvbox
set background=light  " dark or light as you prefer

" To toggle between light and dark modes:
nnoremap <F5> :call ToggleBackground()<CR>
function! ToggleBackground()
    if &background == "dark"
        set background=light
    else
        set background=dark
    endif
endfunction

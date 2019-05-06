" VUNDLE STUFF
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " include Vundle in runtime path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required for Vundle to work
Plugin 'scrooloose/nerdtree' " file browsing
Plugin 'alvan/vim-closetag' " HTML closing tags
Plugin 'pangloss/vim-javascript' " JSX syntax highligher
Plugin 'mxw/vim-jsx' " JSX indenting
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plugin 'vim-airline/vim-airline' " the info bar at the bottom
Plugin 'mileszs/ack.vim' " powerful search tool
Plugin 'nightsense/cosmic_latte' " theme
Plugin 'flazz/vim-colorschemes' " a bunch of themes
Plugin 'jiangmiao/auto-pairs' " auto pair brackets and what not
Plugin 'ervandew/supertab' " tab autocompletion
call vundle#end()
filetype plugin indent on
" /VUNDLE STUFF

set term=screen-256color " required for tmux to properly display vim colors

"if strftime('%H') >= 7 && strftime('%H') < 19
"  let DARK_MODE = 0
"  set background=light
"else
" let DARK_MODE = 1
" set background=dark
"endif

let DARK_MODE = 1
if DARK_MODE
    set background=dark
else
    set background=light
endif

"let AIRLINE_THEME = DARK_MODE ? 'cosmic_latte_dark' : 'cosmic_latte_light'

"let g:airline_theme=AIRLINE_THEME
colorscheme monokai

" CloseTag Options
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx'
" NERDTree Options
" ensure you can quit vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" CtrlP Options
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " ignore files and directories from fuzzy search
let g:ctrlp_show_hidden = 1 " show hidden files

syntax on " turn on syntax highlighting

set number relativenumber " turn on line numbers
set bs=2 " allow backspace to delete line
set cul " highlight current line
set colorcolumn=80 " show 80 character line
set hlsearch " highlight search results
set ignorecase " all searches case insensitive
set smartcase " searche are case sensitive if cap letter used

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType php setlocal shiftwidth=4 tabstop=4
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" VUNDLE STUFF
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " include Vundle in runtime path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required for Vundle to work
Plugin 'scrooloose/nerdtree' " file browsing
Plugin 'alvan/vim-closetag' " HTML closing tags
Plugin 'pangloss/vim-javascript' " JSX syntax highligher
Plugin 'leafgarland/typescript-vim' " typescript syntax and other stuff
Plugin 'mxw/vim-jsx' " JSX indenting
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plugin 'vim-airline/vim-airline' " info bar at the bottom of each buffer
Plugin 'mileszs/ack.vim' " powerful search tool
Plugin 'jiangmiao/auto-pairs' " auto pair brackets and what not
Plugin 'ervandew/supertab' " tab autocompletion
Plugin 'tbastos/vim-lua' " lua stuff
Plugin 'lifepillar/vim-wwdc16-theme' " color theme
call vundle#end()
filetype plugin indent on
" END VUNDLE STUFF

" CloseTag Options
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx,*.tsx'

" NERDTree Options
" ensure you can quit vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP Options
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " ignore files and directories from fuzzy search
let g:ctrlp_show_hidden = 1 " show hidden files

" General VIM Options
set termguicolors
set background=dark
set number relativenumber " turn on line numbers
set bs=2 " allow backspace to delete line
set cul " highlight current line
set colorcolumn=80 " show 80 character line
set hlsearch " highlight search results
set ignorecase " all searches case insensitive
set smartcase " searche are case sensitive if cap letter used

syntax on " turn on syntax highlighting
colorscheme wwdc16 

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType lua setlocal shiftwidth=4 tabstop=4
autocmd FileType php setlocal shiftwidth=4 tabstop=4
autocmd FileType json setlocal shiftwidth=4 tabstop=4
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType text setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2

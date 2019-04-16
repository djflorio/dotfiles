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
call vundle#end()
filetype plugin indent on
" /VUNDLE STUFF

" CloseTag Options
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'
" NERDTree Options
" ensure you can quit vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" CtrlP Options
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " ignore files and directories from fuzzy search

syntax on " turn on syntax highlighting
colorscheme monokai
set number relativenumber " turn on line numbers
set bs=2 " allow backspace to delete line
set cul " highlight current line
set colorcolumn=80 " show 80 character line

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType php setlocal shiftwidth=4 tabstop=4
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" VUNDLE STUFF
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " include Vundle in runtime path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required for Vundle to work
Plugin 'scrooloose/nerdtree' " file browsing
Plugin 'alvan/vim-closetag' " HTML closing tags
Plugin 'pangloss/vim-javascript' " JSX syntax highligher
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'leafgarland/typescript-vim' " typescript syntax and other stuff
Plugin 'mxw/vim-jsx' " JSX indenting
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plugin 'vim-airline/vim-airline' " info bar at the bottom of each buffer
Plugin 'vim-airline/vim-airline-themes' " themes for vim airline
Plugin 'mileszs/ack.vim' " powerful search tool
Plugin 'jiangmiao/auto-pairs' " auto pair brackets and what not
Plugin 'ervandew/supertab' " tab autocompletion
Plugin 'tbastos/vim-lua' " lua stuff
Plugin 'lifepillar/vim-wwdc16-theme' " color theme
Plugin 'victorze/foo' " color theme
Plugin 'franbach/miramare' " color theme
Plugin 'prettier/vim-prettier' " prettier
Plugin 'styled-components/vim-styled-components' " styled syntax highlighter
Plugin 'jparise/vim-graphql' " graphql stuff
Plugin 'dart-lang/dart-vim-plugin' " dart stuff
call vundle#end()
filetype plugin indent on
" END VUNDLE STUFF

filetype off
set rtp+=/home/dflo/bin/lilypond/current/vim/ " include lilypond stuff
filetype on
syntax on
let mapleader = ","

" CloseTag Options
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx,*.tsx'

" NERDTree Options
" ensure you can quit vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>ne :NERDTree<cr>
" let NERDTreeShowHidden=1

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
set smartcase " searches are case sensitive if cap letter used

syntax on " turn on syntax highlighting
set background=dark
"colorscheme wwdc16 
"colorscheme github
colorscheme miramare
hi Comment cterm=bold
hi Search guifg=black guibg=yellow
"let g:airline_theme='molokai'
let g:airline#extensions#branch#enabled = 1

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType lua setlocal shiftwidth=4 tabstop=4
autocmd FileType php setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=4 tabstop=4
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType text setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2
autocmd FileType dart setlocal shiftwidth=2 tabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2
autocmd FileType C setlocal shiftwidth=2 tabstop=2

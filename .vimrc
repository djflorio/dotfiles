" Vim-Plug stuff. Use :PlugInstall to install
call plug#begin()
Plug 'preservim/NERDTree' " file browser
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf main repo
Plug 'junegunn/fzf.vim' " fzf vim-specific repo; includes silver-serfer (Ag)
Plug 'alvan/vim-closetag' " auto tag close for html
Plug 'jiangmiao/auto-pairs' " auto bracket/quote close
Plug 'vim-airline/vim-airline' " bottom bar
Plug 'vim-airline/vim-airline-themes' " themes for bottom bar
Plug 'morhetz/gruvbox' " color scheme
Plug 'dracula/vim', {'as': 'dracula'} " color scheme
Plug 'ycm-core/YouCompleteMe' " auto code completion. See repo for full install instructions
Plug 'HerringtonDarkholme/yats.vim' " typescrypt syntax highlighter (required for vim-jsx-pretty to work on tsx files)
Plug 'maxmellon/vim-jsx-pretty' " jsx and tsx syntax highlighter
Plug 'jparise/vim-graphql' " graphql syntax highlighter
Plug 'prettier/vim-prettier', { 
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
cal plug#end()

let mapleader = ","

" FZF Options
" exclude file names from Ag search
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" set C-P as shortcut, and use GFiles, which excludes anything in .gitignore
silent! nmap <C-P> :GFiles<CR>

" CloseTag Options
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx,*.tsx'

" NERDTree Options
" ensure you can quit vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>ne :NERDTree<cr>
let NERDTreeShowHidden=1

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
set autoindent
set smartindent

syntax on " turn on syntax highlighting
set background=dark
colorscheme dracula
"hi Comment cterm=bold
"hi Search guifg=black guibg=yellow
"let g:airline_theme='molokai'
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='minimalist'

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType lua setlocal shiftwidth=4 tabstop=4
autocmd FileType php setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType text setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2
autocmd FileType dart setlocal shiftwidth=2 tabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2
autocmd FileType C setlocal shiftwidth=2 tabstop=2

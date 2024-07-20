" Plugins
call plug#begin()
    Plug 'morhetz/gruvbox' " Gruvbox theme
    Plug 'tpope/vim-sensible' " Sensible defaults
    Plug 'junegunn/fzf' " Fuzzy finder
    Plug 'scrooloose/nerdtree' " File explorer (toggle with CTRL+N)
    Plug 'bling/vim-airline' " Status line at bottom, tabs at top
    Plug 'tpope/vim-fugitive' " Git integration
    Plug 'airblade/vim-gitgutter' " Display git diff in gutter
    Plug 'voldikss/vim-floaterm' " Create a floating terminal by pressing F12
    Plug 'zivyangll/git-blame.vim' " Git blame in status bar
    Plug 'tommcdo/vim-lion' " For aligning =
    Plug 'preservim/nerdcommenter' " For commenting
    Plug 'bogado/file-line' " File:line support
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete
call plug#end() 

" Theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Settings
set nocompatible 
set encoding=UTF-8
set title
set mouse=a
set confirm
let mapleader = ","
set hidden
set visualbell
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" Editing
syntax on
filetype plugin indent on
set relativenumber 
set number   
set cindent 
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set scrolloff=8
set ignorecase
set smartcase

" Nerd Tree
let NERDTreeQuitOnOpen=1
nnoremap <silent> <expr> <C-n> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" Fuzzy Finder
nnoremap <C-p> :FZF<CR>

" Buffer tabs
let g:airline#extensions#tabline#enabled = 1
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-k> :bd<CR>

" Git blame
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

" Floating terminal
noremap  <leader>t  :FloatermToggle<CR>i
noremap! <leader>t  <Esc>:FloatermToggle<CR>i
tnoremap <leader>t  <C-\><C-n>:FloatermToggle<CR>

" COC auto completion
autocmd FileType php set iskeyword+=$
inoremap <expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<tab>"

" Auto close brace
inoremap {<CR> {<CR>}<up><ESC>o

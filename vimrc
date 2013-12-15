" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'The-NERD-tree'
Bundle 'ctrlp.vim'
Bundle 'github-theme'
Bundle 'buftabs'
Bundle 'git://github.com/groenewege/vim-less.git'

" Vundle after plugins
filetype plugin indent on

" Main
set hidden
set history=500
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,node_modules/*
filetype indent on 

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Editor
syntax on
set nu
set wrap
set vb
set ruler
set cursorline
set tabstop=4
set shiftwidth=4
set autoindent

" Invisible characters
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Theme
colorscheme github
set guifont=EssentialPragmataPro:h15
set linespacing=3

" NERDTree
let NERDTreeChDirMode=2

" Ctags
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" Tagbar
let g:tagbar_width=26

" Statusbar 
let g:buftabs_only_basename=1
let g:buftabs_in_statusline=1
let g:buftabs_active_highlight_group="Visual"
"set statusline=%=\ [%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
set laststatus=2

" onLoad
"autocmd VimEnter * NERDTreeToggle

" keys
let mapleader=","
nnoremap <Leader>r :nohlsearch<CR>
noremap <silent> <Leader>n :NERDTreeToggle<CR>
noremap <silent> <Leader>y :TagbarToggle<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nmap <Leader>i :set list!<CR>
noremap <silent> <Leader>p :CtrlP<CR>
noremap <silent> <Leader>b :CtrlPBuffer<CR>

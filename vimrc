" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'The-NERD-tree'
Bundle 'FindInNERDTree'
Bundle 'ctrlp.vim'
Bundle 'github-theme'
Bundle 'molokai'
Bundle 'git://github.com/groenewege/vim-less.git'
Bundle 'git://github.com/lukaszkorecki/CoffeeTags.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Tagbar'
Bundle 'bling/vim-airline'
Bundle 'minibufexplorerpp'
Bundle 'vcscommand.vim'
Bundle 'ack.vim'
Bundle 'nerdtree-ack'

" Main
set guioptions=egmt
set hidden
set history=500
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,node_modules/*
filetype indent on
set mouse=a
set mousehide
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Editor
syntax enable
filetype plugin indent on
set nu
set wrap
set vb
set ruler
set cursorline
set tabstop=4
set shiftwidth=4
set autoindent
set spell
set backspace=indent,eol,start

" Invisible characters
"set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Theme
colorscheme github
let g:airline_theme='light'

"colorscheme molokai
"let g:airline_theme='molokai'

set guifont=EssentialPragmataPro:h16
set linespace=2

" NERDTree
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_show_hidden = 1

" Ctags
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" Coffeetags
let g:tagbar_type_coffee = {
			\ 'ctagsbin' : 'coffeetags',
			\ 'ctagsargs' : '--include-vars',
			\ 'kinds' : [
			\ 'f:functions',
			\ 'o:object',
			\ ],
			\ 'sro' : ".",
			\ 'kind2scope' : {
			\ 'f' : 'object',
			\ 'o' : 'object',
			\ }
			\ }


" Tagbar
let g:tagbar_width=26

" Statusbar 
"let g:buftabs_only_basename=1
"let g:buftabs_in_statusline=1
"let g:buftabs_active_highlight_group="Visual"
"set statusline=%=\ [%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
"set statusline=%<%f\ %h%m%r%=\ \ %-14.(%l,%c%V%)\ %P
set laststatus=2

" vcn
let g:svndiff_autoupdate = 1

" onLoad
"autocmd VimEnter * NERDTreeToggle

" keys
let mapleader=","
nnoremap <Leader>r :nohlsearch<CR>
noremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :call FindInNERDTree()<CR>
noremap <silent> <Leader>y :TagbarToggle<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nmap <Leader>i :set list!<CR>
noremap <silent> <Leader>p :CtrlP<CR>
noremap <silent> <Leader>b :CtrlPBuffer<CR>

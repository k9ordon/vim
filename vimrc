" Main
syntax on
set nu
set wrap
set vb
set ruler
set cursorline

set nocompatible

colorscheme github

set guifont=EssentialPragmataPro:h15
set linespacing=3


" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'The-NERD-tree'
Bundle 'ctrlp.vim'
Bundle 'github-theme'
Bundle 'buftabs'

" Vundle after plugins
filetype plugin indent on

" onLoad
autocmd VimEnter * NERDTree


" Keys
"

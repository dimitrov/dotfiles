"---------------------------------------
" General settings
"

syn on             " Syntax on
set number         " Line numbers
set smartindent    "
set tabstop=4      " Use 4 space identation
set shiftwidth=4   
set expandtab      
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

color wombat256mod

filetype plugin on
filetype indent on

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"---------------------------------------
" Vundle bundles
"

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/zencoding-vim'
Bundle 'ervandew/supertab'

filetype plugin indent on

"---------------------------------------
" Plugin specific settings and bindings
"

" autocomplete
inoremap <Nul> <C-x><C-o>

" build
nmap <F4> :w<CR>:make<CR>:cw<CR>

" NERDTree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

let g:NERDTreeIgnore = ['\.pyc$','\.swp$', '\~$'] "ignore compiled python files
let g:NERDTreeMouseMode = 2 "single-click to open nodes
let g:NERDTreeChDirMode = 2 "change working dir when I change root

" zencoding
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1

" vim-powerline
let g:Powerline_symbols = 'fancy'

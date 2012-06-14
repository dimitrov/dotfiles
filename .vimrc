call pathogen#infect()

:set number
:syn on
:color wombat256mod
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set expandtab

filetype plugin on
filetype indent on

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" autocomplete
inoremap <Nul> <C-x><C-o>

" build
nmap <F4> :w<CR>:make<CR>:cw<CR>

" NERDTree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

" zencoding
let g:user_zen_expandabbr_key = '<c-e>' 
let g:use_zen_complete_tag = 1

" vim-powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
let g:Powerline_symbols = 'fancy'


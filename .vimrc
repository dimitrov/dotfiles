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

inoremap <Nul> <C-p>
nmap <F4> :w<CR>:make<CR>:cw<CR>
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

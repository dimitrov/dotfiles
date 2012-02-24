:syn on
:color wombat256mod

:set number
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set expandtab

filetype plugin on
filetype indent on

autocmd FileType python set omnifunc=pythoncomplete
autocmd FileType javascript set omnifunc=javascriptcomplete
autocmd FileType html set omnifunc=htmlcomplete
autocmd FileType css set omnifunc=csscomplete

inoremap <Nul> <C-p>
set nocompatible
set noerrorbells
set encoding=utf-8
set t_Co=256
syntax enable
set number
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set cursorline
set backspace=indent,eol,start
set title
set titleold="Terminal"
"set titlestring=%F
"set spell
set hidden
set nowrap
set linebreak
"set colorcolumn=72
set textwidth=80
set colorcolumn=80
set noswapfile
set nobackup
set nowritebackup
set mouse=a
set ttymouse=xterm2
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set ruler
set wildmenu
set wildmode=list:longest,full
set scrolloff=3

set list
set listchars=tab:»·,trail:·
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮


filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/gundo.vim'

Bundle 'spolu/dwm.vim'

Bundle 'kien/ctrlp.vim'

Bundle 'airblade/vim-gitgutter'

Bundle 'terryma/vim-multiple-cursors'

Bundle 'git://github.com/goldfeld/vim-seek.git'
Bundle 'Lokaltog/vim-easymotion'

Bundle 'AndrewRadev/splitjoin.vim'

Bundle 'Townk/vim-autoclose'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

Bundle 'ervandew/supertab'

Bundle 'mattn/zencoding-vim'

Bundle 'davidhalter/jedi-vim'

Bundle 'scrooloose/syntastic'

Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'teramako/jscomplete-vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'

Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'

Bundle 'lordm/vim-browser-reload-linux'

Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on


set background=dark
"colorscheme solarized
"let g:solarized_termcolors=16

"colorscheme Tomorrow-Night-Bright
"colorscheme wombat256

colorscheme badwolf


python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

let g:Powerline_symbols = 'fancy'
"let g:Powerline_theme='solarized'
"let g:Powerline_colorscheme='solarized'


map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<c-W>_

noremap j gj
noremap k gk
noremap gj j
noremap gk k

nnoremap Y y$

cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <special> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>
nnoremap <silent> <F4> :GundoToggle<CR>

nmap sj :SplitjoinSplit<CR>
nmap sk :SplitjoinJoin<CR>

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

map <F7> mzgg=G`z<CR>`
map <silent> <c-w> :call DWM_New()<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Usr l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

"map <right> :bn<CR>
"map <left> :bp<CR>j

nmap <silent> <Leader>tc :call ToggleColorColumn()<CR>

nnoremap <silent> <F10> :set nonumber!<CR>
nnoremap <silent> <F8> :ChromiumReloadStart<CR>
nnoremap <silent> <F9> :ChromiumReloadStop<CR>


" Gundo
let g:gundo_tree_statusline = "Gundo"
let g:gundo_preview_statusline = "Gundo Preview"
let g:gundo_preview_height = 10
let g:gundo_right = 1
let g:gundo_help = 0


"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setl omnifunc=jscomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \if &omnifunc == "" |
                \setlocal omnifunc=syntaxcomplete#Complete |
                \endif
endif


" NERDTree
let g:nerdtree_tabs_open_console_startup=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let g:NERDTreeMouseMode = 2 "single-click to open nodes
let g:NERDTreeChDirMode = 2 "change working dir when I change root
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
"let g:NERDTreeWinSize = 20
" Toggle NERDTree tabs when <C-Left> or <C-Right> are pressed
map <C-Left> <plug>NERDTreeSteppedOpen<cr>
map <C-Right> <plug>NERDTreeSteppedClose<cr>


" Tagbar
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_singleclick = 1


" Supertab
let g:SuperTabContextDiscoverDiscovery =
            \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

autocmd FileType *
            \ if &omnifunc != '' |
            \ call SuperTabChain(&omnifunc, "<c-p>") |
            \ call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
            \ endif


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Filetypes
augroup filetypedetect
    au! BufRead,BufNewFile *.vala,*.vapi setfiletype vala
augroup END

augroup vala
    autocmd BufRead *.vala,*.vapi set tw=100 efm=%f:%1.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
augroup END


" Go to the previous line when the file is reloaded
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END


" Highlight the current line only in the active buffer
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END


" Simple function to toggle the colorcolumn position and visibility.
function! ToggleColorColumn()
    if empty(&colorcolumn)
        setlocal colorcolumn=80
    elseif &colorcolumn == 80
        setlocal colorcolumn=72
    else
        setlocal colorcolumn=
    endif
endfunction

let g:used_javascript_libs = 'jquery,underscore,angularjs'
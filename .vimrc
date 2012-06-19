" set so=1000
set encoding=utf-8
set fileencodings=utf-8

" general settings
set tw=80
set ruler
set number
set nocompatible
set history=50
set hidden
set cpoptions=ces$ " change text options
set guioptions=acg
set clipboard=unnamed
set ch=1
set autoread

" pathogen
call pathogen#infect()

" backups & swap
set nobackup
set noswapfile

" status line
set laststatus=2
set stl=%f\ %m\ %r\ Line:%l/%L\ Col:%v\ Buf:#%n

" indentation & tabs
" set cindent
set smartindent
set autoindent
set wrap
set smarttab
set noexpandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

" fold settings
set foldenable
set foldmethod=indent
set foldminlines=0
set nofoldenable 

" appearance
set background=dark
set t_Co=256
colorscheme inkpot_custom
set cursorline
let html_no_rendering=1
syntax on

" filetype
filetype plugin indent on
filetype on

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" nerdtree
nmap ,n :NERDTreeFind<CR>
map <C-S-n> :NERDTreeToggle<CR>

" easier window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" php documentator
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

" search
set showmatch
set hlsearch
set wrapscan
set ic

" wildmenu
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so
set wildmenu

" taglist
let Tlist_WinWidth = 30
let Tlist_Use_Right_Window = 1
map <C-t> :TlistToggle<CR>

" shortcuts
nnoremap <space> :noh<return><space>
nnoremap <leader><leader> <c-^>
nnoremap ; :

" command-t
let g:CommandTAcceptSelectionSplitMap='<C-y>'
let g:CommandTMaxHeight=15

" fixes
" set notimeout
" set ttimeout
" set timeoutlen=100

" autocmds
" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

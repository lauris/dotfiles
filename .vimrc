set so=1000
set encoding=utf-8
set fileencodings=utf-8

set tw=80
set background=dark
set ruler
set number
set nocompatible
set history=50
set hidden
set cpoptions=ces$ " change text options
set guioptions=acg

set nobackup
set noswapfile

set noexpandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

set laststatus=2
set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L\ Col:%v\ Buf:#%n

set cindent
set smartindent
set autoindent
set wrap
set smarttab

set foldenable
set foldmethod=syntax

set ch=2
set autoread

set t_Co=256
colorscheme xoria256 " zenburn 

filetype plugin indent on
filetype on

syntax on

set showmatch
set hlsearch
set wrapscan
set ic

map <C-S-n> :NERDTreeToggle<CR>
map <C-t> :TlistToggle<CR>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so
set wildmenu
" set wildignorecase

let Tlist_WinWidth = 30
let Tlist_Use_Right_Window = 1

nnoremap <space> :noh<return><space>
nnoremap <leader><leader> <c-^>
nnoremap ; :

let g:CommandTAcceptSelectionSplitMap='<C-y>'

set notimeout
set ttimeout
set timeoutlen=100

set cursorline
set guicursor+=a:blinkon0

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline


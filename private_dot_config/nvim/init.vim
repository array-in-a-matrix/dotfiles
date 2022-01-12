set showmatch               " show matching
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set ttyfast                 " Speed up scrolling in Vim
set encoding=utf-8
set ruler
set wrap
set hlsearch
set smartindent
set showtabline=2
set noshowmode

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dylanaraps/wal.vim'
call plug#end()

" vim-airline costomization
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

colorscheme wal

" let g:airline_theme='custom'
" let g:airline_theme='transparent'
" let g:airline_theme='wal'

if $XDG_SESSION_DESKTOP == 'sway'
    let g:airline_theme='wal'
else
    let g:airline_theme='transparent'
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

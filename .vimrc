call pathogen#infect()

set hlsearch

" tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" auto indent
set autoindent
if has("autocmd")
    " language based smart indent
    filetype plugin indent on
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
endif

" line numbers
set number

" swap files
set dir=~/.vim/tmp//,.
set undodir=~/.vim/undo//,.
set backupdir=~/.vim/backup//,.

" syntax highlighting
syntax on

colorscheme peachpuff

" mouse
if has("mouse")
    set mouse=a
endif

if has("gui_running")
    set guifont=Inconsolata\ Bold\ 11
    colorscheme jellybeans
    set guioptions=aeigtm
endif

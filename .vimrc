set hlsearch

" auto indent
set autoindent
set cindent

" tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

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

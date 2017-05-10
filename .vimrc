call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" languages
Plug 'rust-lang/rust.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'gkz/vim-ls'
Plug 'udalov/kotlin-vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'elixir-lang/vim-elixir'
Plug 'petRUShka/vim-sage'
Plug 'raichoo/purescript-vim'
call plug#end()

set hlsearch

" tabs
set sts=2
set ts=2
set sw=2
set smarttab
set expandtab

" syntax highlighting
syntax on

" auto indent
set autoindent
if has('autocmd')
    " language based smart indent
    filetype plugin indent on
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" line numbers
set number

" swap files
set dir=~/.vim/tmp//,.
set undodir=~/.vim/undo//,.
set backupdir=~/.vim/backup//,.
set backupcopy=yes

colorscheme jellybeans

" mouse
if has("mouse")
    set mouse=a
endif

if has("gui_running")
    set guifont=Source\ Code\ Pro\ Semibold\ 10.5
    set guioptions=aeigtm
endif

" NERDTree if no file on command line
function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

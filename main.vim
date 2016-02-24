set runtimepath+=~/.vimrc.d

syntax enable

" Tab/space stuff
set tabstop=2
set softtabstop=2
set expandtab
set ai
set si

" UI Config
set number
set showcmd
"set cursorline
set wildmenu   " visual autocomplete
set showmatch  " paren matching

" Filetypes
filetype indent on

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Keyboard stuff
let mapleader=","

" Plugins todo: ag.vim, ctrlp.vim, language-specific stuff

" Color scheme
source sprinkles.vim

set encoding=utf8

" Status line
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


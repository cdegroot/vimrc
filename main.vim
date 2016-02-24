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

" Keyboard stuff
let mapleader=","

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Plugins todo: ag.vim, ctrlp.vim, language-specific stuff

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

" Pathogen byundle manager
source ~/.vimrc.d/pathogen.vim
execute pathogen#infect()

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
colorscheme lucius
LuciusWhite

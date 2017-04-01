set runtimepath+=~/.vim

" Pathogen byundle manager
source ~/.vim/pathogen.vim
execute pathogen#infect()

syntax enable

" Tab/space stuff
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" UI Config
set number
""set showcmd
"set cursorline
""set wildmenu   " visual autocomplete
""set showmatch  " paren matching
""set mouse=a

" Keyboard stuff
let mapleader=","

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

set encoding=utf8

" Status line
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Always show the status line
""set laststatus=2

" Format the status line
""set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ L:%l\ C:%c

" Filetypes
filetype indent on
filetype plugin on

" OmniComplete
set omnifunc=syntaxcomplete#Complete

" Colors!
set term=xterm
set t_Co=256
""let &t_AB="\e[48;5;%dm"
""let &t_AF="\e[38;5;%dm"
colorscheme lucius
LuciusWhiteHighContrast
"LuciusBlackHighContrast

" Elm
let g:elm_format_autosave = 1
let g:ycm_semantic_triggers = {
    \ 'elm' : ['.'],
    \}

" Dash
:nmap <silent> <leader>d <Plug>DashSearch

" Strip spaces on write
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

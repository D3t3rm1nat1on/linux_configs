source $VIMRUNTIME/defaults.vim
set nu " line numbers
set smarttab 
set et " auto replace
set wrap " wrap a long lines 
set ai " auto spacing on new line
set cin " C style new line spacing

" Search highlighting
set showmatch
set hlsearch
set incsearch
set ignorecase

" compiling environmet
set makeprg=make
compiler gcc

set colorcolumn=101
set nowrap
hi Comment ctermfg=LightBlue

syntax on
filetype on
set noerrorbells "no sound effects
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab "how many spaces a tab should use
set wildmenu 
set smartindent
" set rnu relativenumber " relative line number
set nowrap
set smartcase 
set noswapfile "no swap file (vim creates them by default) 
set nobackup "no backup file
" set undofile
set cursorline
set incsearch
set formatoptions-=cro
set background=dark

" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if filereadable($HOME.'/.vim/autoload/plug.vim')
    if !empty(glob("$HOME/.vim/.vim_plug.vim"))
        source $HOME/.vim/.vim_plug.vim
    endif
endif

if executable('clang_format')
    if !empty(glob("$HOME/.vim/.clang_format.vim"))
        source $HOME/.vim/.clang_format.vim
    endif
endif


command! Blame normal!:let @a=expand('%')<CR>:let @b=line('.')<CR>:vnew<CR>:set bt=nofile<CR>:%!git blame -wM <C-R>a<CR>:<C-R>b<CR>

set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2

set encoding=UTF-8

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

colorscheme gruvbox

set path+=/usr/include/x86_64-linux-gnu/

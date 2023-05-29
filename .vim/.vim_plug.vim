call plug#begin("~/.vim/plugged")

Plug 'terryma/vim-multiple-cursors'
Plug 'gruvbox-community/gruvbox'
Plug 'rickhowe/spotdiff'

"CSS properties and color selector
" Plug 'KabbAmine/vCoolor.vim'
" Plug 'lilydjwg/colorizer'

" File explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Git blame
Plug 'zivyangll/git-blame.vim'
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

"Intellisense and code completion with syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-git']
let g:coc_disable_startup_warning = 1
" Plug 'sheerun/vim-polyglot'
" Plug 'preservim/nerdcommenter'

" Airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" DirDiff
Plug 'will133/vim-dirdiff'
call plug#end()

" NERD TREE AND ICONS
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusline='NERDTree'" Automaticaly close vim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif" File explorer plugin
map <C-b> :NERDTreeToggle<CR>" nerd commenter
noremap <C-/> :NERDCommenterComment<CR>


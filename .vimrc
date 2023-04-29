"	vim editing (restart with :so %)
set nocompatible
syntax on



"	vim plugins
filetype plugin on
call plug#begin('~/.vim/autoload/') " :PlugInstall and :PlugUpdate and :PlugClean
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
call plug#end()

"	colorscheme solarized_dark
hi Normal guibg=NONE ctermbg=NONE
set number relativenumber
hi LineNr ctermbg=NONE

let g:airline_theme='minimalist'
let g:airline#extensions#whitespace#enabled=0

nnoremap <C-x> :NERDTreeToggle %<CR>

" reloads .vimrc whenever we write
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" allows reading of .pdf files
au BufRead *.pdf sil exe "!xdg-open " . shellescape(expand("%:p")) | bd | let &ft=&ft | redraw!

set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkred guifg=white

set tabstop=4
set softtabstop=4 "deletes 4 spaces as tab
set expandtab "universal tabs

set autoindent

set ignorecase "ignore capital letters during search
set showmode "show the current mode on last line
set showmatch "show matching words during a search

set wildmenu "auto completion menu when pressing TAB
set wildmode=list:longest "wildmenu behaving like Bash completion

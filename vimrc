" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'towolf/vim-helm'
Plug 'dense-analysis/ale'

call plug#end()

let g:ale_lint_delay = 0

" config
color molokai
set rnu
set nu
set expandtab
set ts=4
set shiftwidth=4
set showmatch
set title
set autoindent
set smartindent
set hlsearch
set cursorline
set cursorcolumn
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set nocindent
set colorcolumn=80,120

syntax on
filetype plugin indent on

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javscript setlocal ts=2 sts=2 sw=2

" shortcut config
func! Newtab()
    exe ":tabnew"
    exe ":e ."
endfunc

map <c-k> :tabprevious <cr>
map <c-j> :tabnext <cr>
map <F1> :ALENext <cr>
map <F2> :ALEPrevious <cr>
map <F12> :call Newtab() <cr>

" highlight config
highlight Comment term=bold cterm=bold ctermfg=6
highlight Visual term=reverse cterm=reverse ctermfg=gray ctermbg=black
highlight CursorLine gui=underline cterm=underline ctermbg=NONE

" lightline config
set laststatus=2

" newtrw list hide
let g:netrw_list_hide='.*\.png$,.*\.pdf,.*\.mp4,.*\.mp3,.*\.jpg'

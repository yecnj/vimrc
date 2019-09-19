color twilight 
set rnu
set expandtab
set ts=4
set shiftwidth=4
set showmatch
set title
set autoindent
set smartindent
set hlsearch
set cursorline
highlight Comment term=bold cterm=bold ctermfg=6
syntax on

func! Comment()
	if &filetype == 'python'
	exe "'<,'>norm i#"
	
	elseif &filetype == 'cpp'
	exe "'<,'>norm i//"
	endif
endfunc

func! Decomment()
    if &filetype == 'python'
    exe "'<,'>norm 1x"

    elseif &filetype == 'cpp'
    exe "'<,'>norm 2x"
    endif
endfunc

func! Newtab()
    exe ":tabnew"
    exe ":e ."
endfunc

map <c-b> :tabprevious <cr>
map <c-n> :tabnext <cr>
map <F12> :call Newtab() <cr>

vmap <c-c> <esc>:call Comment() <cr>
vmap <c-x> <esc>:call Decomment() <cr>

nmap <c-c> <esc>v:call Comment() <cr>
nmap <c-x> <esc>v:call Decomment() <cr>

map <F2> :!grep --color=auto <C-R>=expand("<cword>")<CR> *.cc *.h *.c *.s *.S<CR>
map <F3> y:!grep --color=auto <C-R>" *.cc *.h *.c *.s *.S<CR>
map <F4> :20vs./<CR>
map <F5> [{v]}zf
map <F7> gT
map <F8> gt
map <F9> :set invpaste<CR>
map <F10> :norm I//<CR>
map <F11> :norm ^xx<CR>

nmap t] :tj <C-R>=expand("<cword>")<CR><CR>

so $HOME/.vim/myfiletypes.vim

syntax on
set tabstop=2
set softtabstop=2
set hlsearch
set autoindent
set shiftwidth=2
set backspace=2
set autoindent
set smartindent
set cindent
set noequalalways
set title
set showmatch

let _curfile=expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
  set noexpandtab
else
  set expandtab
endif

set background=dark

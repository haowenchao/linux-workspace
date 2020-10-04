""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" switch configures
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set number
set nocompatible
set autoindent
set ruler
set showcmd
set incsearch
set ai
set showmatch
set showmode
set hlsearch
set cursorline
set cscopeverbose  
set autoread
set history=50
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set t_Co=256
set backspace=2
set guifont=Consolas:h12
set guioptions-=T
set guioptions-=m
set csto=0
set cursorline

colorscheme desert 
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope related key remaps
"
" 's' symbol:   find all references to the token under cursor
" 'g' global:   find global definition(s) of the token under cursor
" 'c' calls:    find all calls to the function name under cursor
" 't' text:     find all instances of the text under cursor
" 'e' egrep:    egrep search for the word under cursor
" 'f' file:     open the filename under cursor
" 'i' includes: find files that include the filename under cursor
" 'd' called:   find functions that function under cursor calls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-a>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-a>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-a>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>a :cs add cscope.out<CR>

nmap df :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap ds :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap dv :vert scs find g <C-R>=expand("<cword>")<CR><CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gtags related key remaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Gtags_Auto_Update=1

nmap <F2> :Gtags <C-R>=expand("<cfile>")<CR><CR>
nmap gf :Gtags <C-R>=expand("<cfile>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix related key remaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F5> :cclose<cr>
nmap <F6> :cnext<cr>
nmap <F7> :cprevious<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist related key remaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <F8> :TlistToggle<cr>
map <silent> <F9> :TlistHighlightTag<cr>
map <silent> <F10> :TlistUpdate<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs related key remaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <C-n> :tabnext<cr>
map <silent> <C-p> :tabprev<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" command alias
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
fun! SetupCommandAlias(from, to)
exec 'cnoreabbrev <expr> '.a:from
\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
\ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun

call SetupCommandAlias("g","cs find g")
call SetupCommandAlias("d","Gtags")
call SetupCommandAlias("f","cs find f")
call SetupCommandAlias("a","Gtags -P") 


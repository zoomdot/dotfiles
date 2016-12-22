call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'yonchu/accelerated-smooth-scroll'
call plug#end()


"let g:gruvbox_termcolors=16
set background=dark
colorscheme gruvbox

set tabstop=4 shiftwidth=0 softtabstop=-1
set hlsearch number
set smartcase ignorecase

set laststatus=2

let &lcs="tab:|-,trail:-"
set list
set cursorline

set linebreak
let &showbreak='+>>> '
if has('patch-7.4.352')
	set breakindent "breakindentopt
endif

autocmd FileType python set tabstop=4 shiftwidth=0 softtabstop=-1
autocmd BufWritePre *
	\  let [s:old_search, s:stay_view] = [@/, winsaveview()]
	\| silent! execute '%s;\s\+$;;e'
	\| call winrestview(s:stay_view)
	\| let @/ = s:old_search
	\| unlet s:old_search
	\| unlet s:stay_view

nnoremap <F7> :NERDTreeToggle<cr>
nnoremap <space>p :CtrlPMRUFiles<cr>

nnoremap j gj
nnoremap k gk

nnoremap <c-a> <home>
nnoremap <c-e> <end>
vnoremap <c-a> <home>
vnoremap <c-e> <end>
inoremap <c-a> <c-o>I
inoremap <c-e> <c-o>A


nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" color scheme
if has("gui_running")
colorscheme desert
endif

" pathogen.vim
call pathogen#infect()
Helptags
syntax on
filetype plugin indent on

set backspace=indent,eol,start

" tab width
set tabstop=2
set shiftwidth=2
set expandtab

" line mumbers
set number

" search
:set incsearch
:set ignorecase
:set smartcase

" quick start NERDTree
:nmap <C-n><C-t> :NERDTree<CR>

" navigate up and down 10 lines at a time
:map <C-j> 10j
:map <C-k> 10k

" select a word
map <space> viw

" move a line downwards
map - ddp

" insert to the end of line from isert mode
inoremap öö <esc>A
" exit insert mode with jj
imap jj <esc>

" fireplace.vim
imap <C-E> <esc>:Eval 

call arpeggio#map('icvx', '', 0, 'jk', '<Esc>')
call arpeggio#map('icvx', '', 0, 'hl', '<Esc>I')
call arpeggio#map('icvx', '', 0, 'jl', '<Esc>A')
" call arpeggio#map('icvx', '', 0, 'kn', '<Esc>O')
call arpeggio#map('icvx', '', 0, 'ln', '<Esc>o')
call arpeggio#map('icvx', '', 0, 'ks', '<C-o>:w<cr>')

" pathogen.vim
call pathogen#infect()
Helptags

" color scheme
colorscheme kafka
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
set incsearch
set ignorecase
set smartcase

" automatically detect changes and relaod files
set autoread

" cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" leader
let mapleader = "-"

" quick start NERDTree
nmap <C-n><C-t> :NERDTree<CR>

" navigate up and down 10 lines at a time
map <C-j> 10j
map <C-k> 10k

" select a word
map <space> viw

" fire up fireplace's omnicomplete
imap <C-Space> <C-x><C-o>

call arpeggio#map('icvx', '', 0, 'jk', '<Esc>')
call arpeggio#map('icvx', '', 0, 'hl', '<Esc>I')
call arpeggio#map('icvx', '', 0, 'jl', '<Esc>A')
call arpeggio#map('icvx', '', 0, 'kn', '<Esc>O')
call arpeggio#map('icvx', '', 0, 'ln', '<Esc>o')
call arpeggio#map('icvx', '', 0, 'ks', '<C-o>:w<cr>')
call arpeggio#map('n', '', 0, 'wq', ':q<Enter>')
call arpeggio#map('icvx', '', 0, 'jf', '<Esc>:w<Enter>')
call arpeggio#map('n', '', 0, 'jf', ':w<Enter>')
call arpeggio#map('n', '', 0, 'er', ':Require<Enter>')

" Turn on Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  " Ag command
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow 20|redraw!
  " map backslash to grep shortcut
  nnoremap \ :Ag<SPACE>
endif

" pathogen.vim
call pathogen#infect()
Helptags

" color scheme
set termguicolors
colorscheme kafka
syntax on
filetype plugin indent on

" leader
let mapleader=" "

set backspace=indent,eol,start

" tab width
set tabstop=2
set shiftwidth=2
set expandtab

" show filename/path
set statusline+=%F

" highlight cursorline
set cursorline

" line mumbers
set number

" search
set incsearch
set ignorecase
set smartcase

" automatically detect changes and relaod files
set autoread

" open new split panes to right/bottom
set splitbelow
set splitright

" cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" .md file max line length
au BufRead,BufNewFile *.md setlocal textwidth=100

" JSX support for .js files
let g:jsx_ext_required = 0

" Fixes vim-airline with only one file open
:set laststatus=2

" navigate up and down 10 lines at a time
map <C-j> 10j
map <C-k> 10k

" First non whitespace character
map ö ^

" End of line
map ä $

" Begining of line
map Ö 0

" Last non space character
map Ä g_

" Same for visual mode
vmap ö ^
vmap ä $
vmap Ö 0
vmap Ä g_

" Open an item from quickfix to a vertical split
autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L

" Wrap the line below into a tag
nmap <Leader>t o<Esc>VS<


" NERDTree
" quick start
nmap <C-n><C-t> :NERDTree<CR>
" quick find
nmap <C-n><C-t><C-f> :NERDTreeFind<CR>
" show dotfiles
let NERDTreeShowHidden=1
" ignored files
let NERDTreeIgnore=['^npm-debug\.log.*', '\.swp$', '\~$']


" Clojure
" fire up fireplace's omnicomplete
imap <C-Space> <C-x><C-o>
" jump to function source
map <Leader>gf [<C-d>
" reload app
map <Leader>re cqp(user/reset)<Enter>
" refresh repl
map <Leader>rf cqp(clojure.tools.namespace.repl/refresh)<Enter>


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers=['']

let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["javascript", "html", "css"],
    \ "passive_filetypes": [] }


" Arpeggio
call arpeggio#map('icvx', '', 0, 'jk', '<Esc>')
call arpeggio#map('icvx', '', 0, 'hl', '<Esc>I')
call arpeggio#map('icvx', '', 0, 'jl', '<Esc>A')
call arpeggio#map('icvx', '', 0, 'ks', '<C-o>:w<cr>')
call arpeggio#map('n', '', 0, 'wq', ':q<Enter>')
call arpeggio#map('icvx', '', 0, 'jf', '<Esc>:w<Enter>')
call arpeggio#map('n', '', 0, 'jf', ':w<Enter>')


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
  " bind T to grep word under cursor
  nnoremap T :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
  " Ag command
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow 20|redraw!
  " map backslash to grep shortcut
  nnoremap \ :Ag<Space>
  " map single quote to grep literal shortcut
  nnoremap ' :Ag<Space>-Q<Space>''<Left>
endif

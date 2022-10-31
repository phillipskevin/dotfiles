" turn off swap files
set noswapfile

" enable line numbers
set number

" replay q macro with Q
nnoremap Q @q

" make Y yank to end of line as with C and D
nnoremap Y y$

" easier switch to split
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

" install plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'EdenEast/nightfox.nvim'
call plug#end()

" map :NERDTree to F5
nnoremap <silent> <F5> :NERDTreeToggle<CR>

" colorscheme
colorscheme nordfox

" set %% as abbreviation for working directory
cabbr <expr> %% expand('%:p:h')

" indenting
filetype indent on
set expandtab       "Use softtabstop spaces instead of tab characters for indentation - abbr et
set shiftwidth=2    "Indent by 2 spaces when using >>, <<, == etc. - abbr sw
set softtabstop=2   "Indent by 2 spaces when pressing <TAB> - abbr sts
set tabstop=2       "Indent by 2 spaces when pressing <TAB> - abbr ts
set smartindent     "Automatically inserts indentation in some cases
set smarttab        "A <Tab> in front of a line inserts blanks according to 'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.  A <BS> will delete a 'shiftwidth' worth of space at the start of the line.

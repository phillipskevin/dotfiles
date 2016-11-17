" pathogen - https://github.com/tpope/vim-pathogen
call pathogen#infect()
call pathogen#helptags()

colorscheme lucius
LuciusDarkHighContrast

" colors
set t_Co=256
syntax on

" dark background
set background=dark

" load plugins for specific filetypes if they exit 
filetype plugin on

" indenting
filetype indent on
set expandtab       "Use softtabstop spaces instead of tab characters for indentation - abbr et
set shiftwidth=2    "Indent by 2 spaces when using >>, <<, == etc. - abbr sw
set softtabstop=2   "Indent by 2 spaces when pressing <TAB> - abbr sts
set tabstop=2       "Indent by 2 spaces when pressing <TAB> - abbr ts
set smartindent     "Automatically inserts indentation in some cases
set smarttab        "A <Tab> in front of a line inserts blanks according to 'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.  A <BS> will delete a 'shiftwidth' worth of space at the start of the line.
" set autoindent      "Keep indentation from previous line - abbr ai
" set noautoindent      "abbr noai
" set nosmartindent " abbr nosi
" set nosmarttab " abbr nosta
" set cindent         "Like smartindent, but stricter and more customisable

" set word separators
set iskeyword-=_

" unix style line endings
set ff=unix

" scrollbars, no
set guioptions=
" set guioptions+=LlRrb
" set guioptions-=LlRrb

" status line
 set noruler             " ruler, no
 set laststatus=2        " statusbar on every buffer, yes
 set statusline=%f       " path to the file in the buffer, as typed or relative to current directory
 set statusline+=%{fugitive#statusline()} " git status (courtesy of fugitive)
 set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
 set statusline+=%{&ff}] " file format
 set statusline+=%h      " help file flag
 set statusline+=%m      " modified flag
 set statusline+=%r      " read only flag
 set statusline+=%y      " filetype
 set statusline+=%=      " left/right separator
 set statusline+=%c,     " cursor column
 set statusline+=%l/%L   " cursor line/total lines
 set statusline+=\ %P    " percent of file on screen

" line numbers, yes
set number
set nuw=6  " number width to 6 makes things look a little neater

" word wrap, no
set wrap

" wildmenu makes life better
" set wildmenu wildmode=list:longest,full

" Ignore compiled files
" set wildignore=*.o,*~,*.pyc

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
" set hid

" Ignore case when searching
" set ignorecase

" When searching try to be smart about cases 
" set smartcase

" Highlight search results
" nmap <F18> :set hls<ENTER>
" nmap <F19> :set nohls<ENTER>

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" set %% as abbreviation for working directory
cabbr <expr> %% expand('%:p:h')

" lots and lots of tabs, yes
" set tabpagemax=50

" shortcut for all buffers to tabs
" cabbr tb tab ball

" map <Esc> to jk in insert mode (has to be typed quick)
" imap jk <Esc>

" keep the current visual block selection active after changing indent with '<' or '>'
" vmap > >gv
" vmap < <gv

" replay q macro with Q
nnoremap Q @q

" make Y yank to end of line as with C and D
nnoremap Y y$

" easier vertical scroll keys
" nnoremap <M-C-k> <C-y>
" nnoremap <M-C-j> <C-e>

" horizontal scrolling with <C-h> and <C-l>
" nnoremap <M-C-h> z5h
" nnoremap <M-C-h> z5l

" easier switch to split
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

" stop auto commenting
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r
" formatoptions-=o

" toggle paste mode with <F1> ... this way you can leave autocommenting on
" most of the time a quickly disable it for pasting in code
" nnoremap <F1> :set invpaste paste?<CR>
" set pastetoggle=<F1>
" set showmode

" Autoformat - https://github.com/Chiel92/vim-autoformat
" noremap <F3> :Autoformat<CR><CR>

" yankring - http://www.vim.org/scripts/script.php?script_id=1234
" nnoremap <silent> <F4> :YRShow<CR>
" let g:yankring_zap_keys = 'f F t T / ?'

" NERDtree - http://vim.sourceforge.net/scripts/script.php?script_id=1658
nnoremap <silent> <F5> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

" gundo - http://sjl.bitbucket.org/gundo.vim/
" nnoremap <silent> <F6> :GundoToggle<CR>

" comment a line with <F2>
" autocmd FileType html map <F2> I<!-- 

" use  html syntax on templates
au BufNewFile,BufRead *.mustache set filetype=html
au BufNewFile,BufRead *.ejs set filetype=js

" use css syntax on stylus
au BufNewFile,BufRead *.styl set filetype=css

set mouse=a

" Syntastic syuntax checker - https://github.com/scrooloose/syntastic
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_check_on_open = 1
" nnoremap <silent> <F4> :lopen<CR>

" CtrlP Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" https://github.com/kien/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/node_modules/*             " Kevin's list
set wildignore+=*\\node_modules\\*           " Kevin's list
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" turn off swap files
set noswapfile

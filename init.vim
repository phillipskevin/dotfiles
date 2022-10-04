" install NERDTree
call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()

" map :NERDTree to F5
nnoremap <silent> <F5> :NERDTreeToggle<CR>
" replay q macro with Q
nnoremap Q @q
" make Y yank to end of line as with C and D
nnoremap Y y$
" easier switch to split
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

set number
set tabstop=4
set shiftwidth=4
set nobackup
set nowritebackup
set noswapfile
set noundofile
set autoindent
set scrolloff=10
set tabpagemax=100
set expandtab
set ignorecase
set smartcase
set ruler
set laststatus=2
set statusline=%F%m%r%h%w\ [LINE:%l/%L]\ [COL:%c]
syntax on
set colorcolumn=72
hi ColorColumn ctermbg=lightcyan guibg=blue

" Smart way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>
map <C-j> 10j
map <C-k> 10k

nnoremap <C-o> :tabnext<CR>
nnoremap <C-y> :tabprev<CR>

let g:netrw_liststyle=3
let g:netrw_banner = 0

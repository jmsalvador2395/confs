set number
set tabstop=4
set shiftwidth=4
set nobackup
set nowritebackup
set noswapfile
set noundofile
set autoindent
set scrolloff=10
set laststatus=2
set statusline=%!getcwd()
set tabpagemax=100
set expandtab
set ignorecase
set smartcase
syntax on

set pastetoggle=<F3>

" Smart way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

nnoremap <C-o> :tabnext<CR>
nnoremap <C-h> :tabprev<CR>



let g:netrw_liststyle=3
let g:netrw_banner = 0

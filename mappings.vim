" Set map-leader to space
let mapleader=","

nnoremap <silent> <Esc> <Esc>:noh<CR>

nmap <C-p> :<C-u>Files<CR>
nmap <leader>p :<C-u>FZFMru<CR>
nmap <C-s> :<C-u>Lines<CR>
nmap <C-b> :<C-u>Buffers<CR>
nmap <C-g> :<C-u>Rg<CR>
nmap <F4> :<C-u>A<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

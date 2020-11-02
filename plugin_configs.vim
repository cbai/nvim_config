" Lightline setup
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ 'active': {
    \   'left':[ [ 'mode', 'paste' ],
    \            [ 'gitbranch', 'readonly', 'filename', 'modified' ]
    \          ]
    \  },
  	\ 'component': {
  	\   'lineinfo': ' %3l:%-2v',
  	\ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   }
    \ }

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}

let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}

let g:vimwiki_list = [{'path': '~/notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Deoplete

" enable ncm2 for all buffers
" set completeopt=noinsert,menuone,noselect
" 
" let g:deoplete#enable_at_startup = 1
" 
" call deoplete#custom#option({
"     \ 'auto_complete_delay': 200,
"     \ 'max_list': 10,
"     \ })
" 
" let g:LanguageClient_serverCommands = {
"     \ 'python': ['/usr/local/bin/pyls'],
"  	\ 'cpp': ['clangd'],
"  	\ }
" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1

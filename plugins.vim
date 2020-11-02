call plug#begin('~/.vim/plugged')

" UI
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'drzel/vim-line-no-indicator'
Plug 'RRethy/vim-illuminate'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Editor
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" Linter
Plug 'dense-analysis/ale'
Plug 'neomake/neomake'

" Code search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'zackhsi/fzf-tags'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Qt
Plug 'fedorenchik/qt-support.vim'

" Note taking
Plug 'vimwiki/vimwiki'

" Quick switch to header file
Plug 'vim-scripts/a.vim'

call plug#end()


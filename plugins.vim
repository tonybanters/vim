call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'yegappan/lsp'
Plug 'ojroques/vim-oscyank', {'branch': 'main'}
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'

call plug#end()


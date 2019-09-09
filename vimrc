let mapleader=" "
syntax on 
set number 
set wildmenu 
set hlsearch 

noremap <LEADER><CR> :nohlsearch<CR>
set incsearch 
set tabstop=4
set ignorecase 
map Q :q<CR>
map W :w<CR>
map s <nop>
map R :source $MYVIMRC<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>k <C-W>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>+ :vertical resize+5<CR>
map <LEADER>- :vertical resize-5<CR>
set mouse=a


set relativenumber
set cursorline
set wrap
set showcmd
noremap U 5k
noremap E 5j
set smartcase
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

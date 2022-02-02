"source $HOME/.config/nvim/lotus.vim
"source $HOME/.config/nvim/lotusbar.vim
call plug#begin()
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }
call plug#end()

"colorscheme nord
colorscheme material

syntax on
set relativenumber 
set number
set termguicolors
set laststatus=2
set backspace=2
set sw=2
set clipboard=unnamed
let mapleader = " "
hi Normal guibg=NONE ctermbg=NONE

" nerdtree
nmap <Leader>e :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>


" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
imap <C-c> <Esc>l

"copy paste to clipboard to normal copy 
vnoremap <C-c> "+y
map <C-v> "+P

"close current  window
"nmap <C-w> :q <CR>
"nmap <leader>q :q <CR>

"save file
"nmap <leader>w :w <CR>

nnoremap ,<space> :CHADopen<CR>
"nnoremap <space>x :wq!<CR>

set noshowmode

hi EndOfBuffer guifg=bg guibg=bg
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=#302d38 guifg=#302d38
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg




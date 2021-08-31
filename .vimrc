let mapleader=";"

set nu rnu

call plug#begin('~/.vim/plugged')
  Plug 'mattn/emmet-vim'
  Plug 'junegunn/goyo.vim'
  Plug 'vim-scripts/fountain.vim'
  Plug 'tpope/vim-surround'
call plug#end()

map <leader>g :Goyo <CR>
map <leader>s :setlocal spell! spelllang=en_us<CR>
map <leader>ve :tabedit ~/.vimrc<CR>
map <leader>vr :source ~/.vimrc<CR>
map <leader>m <Right>i<++><Esc>
map <leader>j /<++><CR>
map <leader>k ?<++><CR>

" Markdown Stuff
map <leader>i I*<Esc>A*<Esc>0

" Latex Stuff
map <leader>lc :!pdflatex %<CR> <CR>
map <leader>le o\begin{<++>}<Esc>o\end{<++>}<Esc>k0/<++><CR>ci{

set splitright splitbelow

syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set breakindent

set linebreak

set showcmd

set fdm=indent

let vim_markdown_folding_disabled = 1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-E> <C-W>40>
nnoremap <S-j> 20j
nnoremap <S-k> 20k

set backspace=indent,eol,start

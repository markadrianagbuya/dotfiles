if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-commentary'

call plug#end()

" change the mapleader from \ to ,
let mapleader=","

" shortcut for opening up fuzzy file explore (requires fzf.vim)
nnoremap <leader>t :GFiles<cr>

" shortcut for opening up file search (requires fzf.vim and ripgrep installed)
nnoremap <leader>f :Rg<space>

" shortcut for removing highlight
nnoremap <leader>n :noh<cr>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Search for visually selected text
vnoremap // y/<C-R>"<CR>

" This allows buffers to remain hidden instead of being closed (and requiring
" saving)
set hidden 

" Show line numbers
set number

" Set tab to 2 spaces
set tabstop=2
" Don't wrap
set nowrap
set backspace=indent,eol,start               " Delete everything with backspace
set shiftwidth=2                             " Tabs under smart indent
set shiftround
set cindent
set autoindent
set smarttab
set expandtab

set hlsearch                                 " Highlight searchg
set incsearch                                " Show partial matches as search is entered
set ignorecase                               " Enable case insensitive search
set smartcase                                " Disable case insentivity if mixed case

" -----------------------------
" Backups and undo
" -----------------------------
set nobackup                                 " Disable backups.
set nowritebackup
set noswapfile
set undolevels=1000                          " Large undo levels.

" Remap ESC
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
inoremap kk <ESC>

" Shortcuts for vim-test
nnoremap <silent> <leader>R :w<CR> :TestNearest<CR>
nnoremap <silent> <leader>r :w<CR> :TestFile<CR>
nnoremap <silent> <leader>a :w<CR> :TestSuite<CR>
nnoremap <silent> <leader>l :w<CR> :TestLast<CR>
nnoremap <silent> <leader>g :w<CR> :TestVisit<CR>

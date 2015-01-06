set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'Rykka/riv.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'rodjek/vim-puppet'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-scripts/TaskList.vim'

call vundle#end()

filetype plugin indent on

" The rest of your config follows here
set encoding=utf8
set termencoding=utf8
set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
let mapleader = "ö"
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" colorscheme
set guifont=Monaco\ for\ Powerline:h12
colorscheme solarized
so ~/.vim/bundle/vim-colors-solarized/autoload/togglebg.vim

" Unprintable characters
set list
set listchars=tab:▸\ ,eol:¬

" Force learn mode on
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Other shortcuts
inoremap jk <esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>tb :Tagbar<cr>
nnoremap <leader>tl :TaskList<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>bg :ToggleBG<cr>

" solve ycm ultisnips key mapping problem
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Window movement
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Special things
syntax on
nnoremap <C-n> :bnext<CR>
nnoremap <C-m> :bprevious<CR>
au FocusLost * :wa

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

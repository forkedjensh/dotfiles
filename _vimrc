set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle stuff
Plugin 'gmarik/Vundle.vim'

" generic stuff
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'

" autocomplete stuff
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'

" programming stuff
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'
Plugin 'Yggdroot/indentLine'

" colorschemes and layout stuff
Plugin 'lifepillar/vim-solarized8'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" language specific stuff
Plugin 'forkedjensh/plantuml-syntax'
Plugin 'pearofducks/ansible-vim'
Plugin 'Rykka/riv.vim'
Plugin 'wannesm/wmgraphviz.vim'

call vundle#end()

filetype plugin indent on

" Include current directory and its subdirectories to vim's path
set path+=**

" Truecolour
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set termguicolors

" File locations
" mkdir .vim/(backup|undo|swp)
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" The rest of your config follows here
set backup
set encoding=utf8
set termencoding=utf8
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
set number relativenumber
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
set colorcolumn=80

" colorscheme
set guifont=Monaco\ for\ Powerline:h12
set background=dark
"colorscheme solarized8
colorscheme gruvbox

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
inoremap jj <esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>tb :Tagbar<cr>
nnoremap <leader>tl :TaskList<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>

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
"let g:airline_theme='solarized'
let g:airline_theme='gruvbox'
"let g:airline_solarized_bg='dark'

" rst support in tagbar
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '$HOME/bin/rst2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

"UltiSnips
let g:ultisnips_python_style="sphinx"

"text width for git commits is 72 characters
autocmd Filetype gitcommit setlocal spell textwidth=72

" ReST tables with vim-table-mode
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" In playbooks directories there are playbooks
autocmd BufRead,BufNewFile */playbooks/*.yml set filetype=ansible

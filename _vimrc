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
Plugin 'itchyny/lightline.vim'
Plugin 'mgee/lightline-bufferline'

" language specific stuff
Plugin 'forkedjensh/plantuml-syntax'
Plugin 'pearofducks/ansible-vim'
Plugin 'Rykka/riv.vim'
Plugin 'wannesm/wmgraphviz.vim'

call vundle#end()

filetype plugin indent on
syntax on

" Include current directory and its subdirectories to vim's path
set path+=**

" Truecolour, font and colorscheme
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
set termguicolors
" set guifont=Monaco:h12
set background=dark
colorscheme gruvbox

" File locations
" mkdir $HOME/.vim/{backup,undo,swp}
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
set noshowmode
set showcmd
set hidden
set wildmenu
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number relativenumber
set undofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set list
set listchars=tab:▸\ ,eol:¬
set showtabline=2

" Maps
let mapleader = "ö"
inoremap jk <esc>
nnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>tb :Tagbar<cr>
nnoremap <tab> %
nnoremap j gj
nnoremap k gk
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
vnoremap / /\v
vnoremap <tab> %
nmap <leader>1 <Plug>lightline#bufferline#go(1)
nmap <leader>2 <Plug>lightline#bufferline#go(2)
nmap <leader>3 <Plug>lightline#bufferline#go(3)
nmap <leader>4 <Plug>lightline#bufferline#go(4)
nmap <leader>5 <Plug>lightline#bufferline#go(5)
nmap <leader>6 <Plug>lightline#bufferline#go(6)
nmap <leader>7 <Plug>lightline#bufferline#go(7)
nmap <leader>8 <Plug>lightline#bufferline#go(8)
nmap <leader>9 <Plug>lightline#bufferline#go(9)
nmap <leader>0 <Plug>lightline#bufferline#go(10)
"" vim-impaired maps (german keyboard layout)
nmap < ü
nmap > +
omap < ü
omap > +
xmap < ü
xmap > +
"" riv mappings (german keyboard layout)
nmap < Ü
nmap > *
omap < Ü
omap > *
xmap < Ü
xmap > *

" Autocmds
" autocmd FocusLost * :wa
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd BufRead,BufNewFile */playbooks/*.yml set filetype=ansible

" Solve ycm ultisnips key mapping problem
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

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

" ReST tables with vim-table-mode
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" rst maps
autocmd filetype rst nnoremap <leader>h0 :RivTitle0<CR>
autocmd filetype rst nnoremap <leader>h1 :RivTitle1<CR>
autocmd filetype rst nnoremap <leader>h2 :RivTitle2<CR>
autocmd filetype rst nnoremap <leader>h3 :RivTitle3<CR>
autocmd filetype rst nnoremap <leader>h4 :RivTitle4<CR>

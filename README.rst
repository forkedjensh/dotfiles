#####
Notes
#####

Checkout this repository to your home directory and link all affected dot files in
your home directory to the coresponding files in the dotfile directory.

For example:

- ``ln -s dotfiles/_vimrc ~/.vimrc``

Vim
===

Prerequisites
-------------

- ``$ mkdir -p ~/.vim/{backup,undo,swp}``

Please install the following pulgins in ``~/.vim/pack/whatever/start``:

- kien/ctrlp.vim
- tpope/vim-commentary
- tpope/vim-surround
- tpope/vim-unimpaired
- tpope/vim-vinegar
- honza/vim-snippets
- SirVer/ultisnips
- maralla/completor.vim
- dhruvasagar/vim-table-mode
- jmcantrell/vim-virtualenv
- majutsushi/tagbar
- tpope/vim-fugitive
- w0rp/ale
- Yggdroot/indentLine
- forkedjensh/plantuml-syntax
- pearofducks/ansible-vim
- Rykka/riv.vim
- wannesm/wmgraphviz.vim
- lifepillar/vim-solarized8
- morhetz/gruvbox
- itchyny/lightline.vim
- mgee/lightline-bufferline

reStructuredText support in vim Tagbar
--------------------------------------

Grab ``rst2ctags.py`` from `jszakmeister's Github Repo
<https://github.com/jszakmeister/rst2ctags>`_ and copy it to  ``$HOME/bin``.

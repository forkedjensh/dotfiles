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

- ``$ mkdir -p ~/.vim/(backup|undo|swp)
- ``$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim``

To install the Plugins afterwards run

``$ vim +PluginInstall +qall``

Compile YCM components (MacOS X)
--------------------------------

#. ``$ cd ~/.vim/bundle/YouCompleteMe``
#. ``$ ./install.py``

reStructuredText support in vim Tagbar
--------------------------------------

Grab ``rst2ctags.py`` from `jszakmeister's Github Repo
<https://github.com/jszakmeister/rst2ctags>`_ and copy it to  ``$HOME/bin``.

Font "Monaco for Powerline" needed (MacOS X)
--------------------------------------------

Get it here: `Patched font Monaco for OSX Vim-Powerline
<https://gist.github.com/baopham/1838072>`_

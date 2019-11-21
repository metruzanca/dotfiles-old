" =================t=
"	     Tabs
" ===================

filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" ====================
"       Theme
" ====================

" Can't seem to get this theme to work on windows
" I think it has something todo with truecolor not being supported.

" set background=dark
" syntax enable
" colorscheme synthwave84

" ====================
"     Plug Manager
" ====================

" Auto install

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin definitions

call plug#begin('~/.vim/plugged')

" Auto paren pair insertion/deletion
Plug 'jiangmiao/auto-pairs'

" Vim Theme
Plug 'artanikin/vim-synthwave84'

call plug#end()

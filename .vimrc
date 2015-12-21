" To load local .vimrc from projects.
set exrc

filetype plugin on
syntax on

let mapleader=","
set expandtab
set autoindent
set number
set shiftwidth=2
set tabstop=2
set smartindent
colorscheme solarized

    
" Avoid carriage weird stuff.
:set fileformat=unix

" Search toggle
:noremap <F4> :set hlsearch! hlsearch?<CR>

" Enable project vimrc
set secure


noremap <leader>y :silent w !xsel -bi<cr>
noremap <leader>p o<esc>:set paste<cr>:.!xsel -bo<cr>:set nopaste<cr>
noremap <leader>P o<esc>:set paste<cr>:.!xsel -po<cr>:set nopaste<cr>

"" Neobundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" NerdTree
NeoBundle 'scrooloose/nerdtree'
" NerdCommenter
NeoBundle 'scrooloose/nerdcommenter'
" Clang Format
NeoBundle 'rhysd/vim-clang-format'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

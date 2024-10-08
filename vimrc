" Vim settings
set nocompatible              " Use modern Vim features
set encoding=utf-8            " Use UTF-8 encoding
set mouse=a                   " Enable mouse support
set clipboard=unnamedplus     " Use system clipboard
set hidden                    " Allow unsaved buffers
set showcmd                   " Show command in status line
set cursorline                " Highlight the current line
set termguicolors             " Enable true color support
syntax enable                 " Enable syntax highlighting
filetype plugin indent on     " Enable filetype detection and indentation

" Appearance settings
set background=dark           " Use dark background
set t_Co=256                  " Enable 256 colors

" UI customizations
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set wrap                      " Wrap lines
set linebreak                 " Break lines at word boundaries
set showmatch                 " Highlight matching parentheses
set signcolumn=yes            " Always show the sign column
set foldmethod=marker         " Use markers for folding
set laststatus=2              " Use a status bar

" Keybindings
nnoremap <leader>w :w<CR>     " Save with <leader>w
nnoremap <leader>q :q<CR>     " Quit with <leader>q
nnoremap <leader>ev $MYVIMRC<CR> " Edit .vimrc

" Plugin settings
call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim' " Nord color scheme
Plug 'vim-airline/vim-airline'  " Cool line

call plug#end()

" Apply Nord theme
colorscheme nord

" Additional settings
set tabstop=4                 " Number of spaces for a tab
set shiftwidth=4              " Number of spaces to use for autoindent
set expandtab                 " Convert tabs to spaces
set smartindent               " Enable smart indentation


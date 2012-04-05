set nocompatible
set encoding=utf-8

let mapleader=","

call pathogen#infect()                                " Enable pathogen to load plugin bundles from ~/.vim/bundle
call pathogen#helptags()

syntax enable                                         " Syntax highlighting
colorscheme github                                    " Colors

set expandtab                                         " Spaces, not tabs
set tabstop=2 softtabstop=2                           " Tab width
set shiftwidth=2                                      " Number of spaces for autoindent

set autoindent smartindent                            " Indentation. Do it.
set nowrap                                            " Don’t wrap
set formatoptions=qrnl

set ignorecase smartcase                              " Ignore case for searches without capital letters
set hlsearch                                          " Highlight all matches
set incsearch                                         " Incremental searching
set gdefault                                          " Replace all occurrences in a line by default
" Clear search highlights
nnoremap <leader><space> :noh<cr>
" Saner regex in forward search
nnoremap / /\v
vnoremap / /\v
" Jump between bracket pairs
nnoremap <tab> %
vnoremap <tab> %

set autoread                                          " Reload buffers modified outside Vim
set hidden                                            " Switch buffers without saving
set nobackup                                          " Do not backup
set nowritebackup                                     " Also, do not backup
set directory+=,~/tmp,$TMP                            " Single place for swap files

set relativenumber numberwidth=5                      " Show relative line numbers, with padding
set ruler                                             " Show ruler
set colorcolumn=81                                    " Highlight wide column
set list listchars=tab:»·,trail:·                     " Display tabs and trailing whitespace

set scrolloff=3                                       " 3 lines of context around cursor
set laststatus=2                                      " Always show status bar
set showcmd                                           " Show incomplete commands
set showmode                                          " Show mode

set wildmenu                                          " Better command completion
set wildmode=list:longest

set splitbelow                                        " New splits below
set splitright                                        "   and to the right

set formatoptions-=o                                  " New lines don’t continue comments

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Blank lines without insert
map <leader>o o<Esc>
map <leader>O O<Esc>

" Ack for project search
map <leader>f :Ack<space>
noremap <Leader>F :Ack <cword><cr>

" Load any local configuration
if filereadable($HOME . '/.vim/vimrc.local.vim')
  so $HOME/.vim/vimrc.local.vim
endif

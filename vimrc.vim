set nocompatible
set encoding=utf-8

let mapleader=","

call pathogen#infect()                                " Enable pathogen to load plugin bundles from ~/.vim/bundle

syntax enable                                         " Syntax highlighting
colorscheme github                                    " Colors
au BufRead,BufNewFile *.ru,Rakefile set syntax=ruby   " Treat as Ruby
au BufRead,BufNewFile *.ejs         set syntax=html   " Treat as HTML

filetype plugin indent on                             " Detect filetype

set expandtab                                         " Spaces, not tabs
set tabstop=2 softtabstop=2                           " Tab width
set shiftwidth=2                                      " Number of spaces for autoindent

set autoindent smartindent                            " Indentation. Do it.
set nowrap                                            " Don’t wrap

set showcmd                                           " Show incomplete commands
set showmode                                          " Show mode

set ignorecase smartcase                              " Ignore case for searches without capital letters
set hlsearch                                          " Highlight all matches
set incsearch                                         " Incremental searching

set nobackup                                          " Do not backup
set nowritebackup                                     " Also, do not backup
set directory+=,~/tmp,$TMP                            " Single place for swap files

set number numberwidth=5                              " Show line numbers, with padding
set ruler                                             " Show ruler
set colorcolumn=81                                    " Highlight wide column
set list listchars=tab:»·,trail:·                     " Display tabs and trailing whitespace

set laststatus=2                                      " Always show status bar

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

" Load any local settings
if filereadable($HOME . '/.vim/vimrc.local.vim')
  so $HOME/.vim/vimrc.local.vim
endif

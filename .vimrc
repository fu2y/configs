"#######################################################################
" Vundle

" init vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'

" General {{{
  Bundle 'ctrlp.vim'
  Bundle 'scroolose/nerdtree'
  Bundle 'DirDiff.vim'
" }}}

" end of vundle section
call vundle#end()            " required
filetype plugin indent on    " required

"#######################################################################
" basic settings

set nocompatible   " activate VIM-Addons 
set encoding=utf8  " UTF8
set mouse=a        " enable mouse support
set number         " show line numbers
set incsearch      " show search results while searching
set hlsearch       " make search results colored
set ignorecase     " input not case sensitive
set smartcase      " if capital is big, do not use case sensitive option
set autoread       " reread file if changed outside vim
set backup         " create backup
set tabstop=2      " tab corresponds to 2 spaced
set softtabstop=2  " smooth tab
set shiftwidth=2   " shifting size
set autoindent     " shift automatically
set expandtab      " replace tab with space
set wrap           " activate line break
set list           " show listcharts
set listchars=tab:»·,trail:· " show tabs and spaces on empty linesn
set laststatus=2   " show statusline permanently
colorscheme monokai  " colorscheme

"#######################################################################
" Set Up File Backup

set backupdir=~/.vim/backup,.
set directory=~/.vim/backup,.

"#######################################################################
" Airline Config

let g:airline_theme='fu2y'                          " colorscheme for airline
let g:airline#extensions#tabline#enabled = 1        " tabs in statusline

syntax on                                           " show colored code

"#######################################################################
" GCC Shortcuts

set makeprg=gcc\ %\ &&\ ./a.out

"#######################################################################
" NERDtree Settings

map <F2> :NERDTree<CR>
let NERDTreeQuitOnOpen = 1

"#######################################################################
" You Complete Me Settings

set completeopt-=preview " no preview window in vim
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

"#######################################################################
" Syntastic Settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntax_always_populate_loc_list = 1
let g:syntax_auto_loc_list = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--ignore=E501,E225,E251,E265,E261'

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Languages
Bundle 'IndentAnything'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'

" Syntax
Bundle 'scrooloose/syntastic'

" Colors
Bundle 'altercation/vim-colors-solarized'

" Other Utilities
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'mileszs/ack.vim'
Bundle 'ervandew/supertab'

syntax enable
filetype plugin indent on

" Thanks http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set ttyfast
set wildmenu

set number
set ruler

set mouse=a

set encoding=utf-8

" whitespace
set nowrap
set list
set backspace=indent,eol,start

" List chars
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.

" Remap leader to comma
let mapleader = ","

" More sane searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" <leader><space> clears search
nnoremap <leader><space> :noh<cr>

" <leader><leader> toggles between files
nnoremap <leader><leader> <c-^>

" <tab> matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" show colored column at 80
set colorcolumn=80

" Disable arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" j and k move by screen lines
nnoremap j gj
nnoremap k gk

" I never really want to hit F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" shortcut for :Ack
nnoremap <leader>a :Ack

" <leader>v selects text that was just pasted
nnoremap <leader>v V`]

" <leader>w opens a vertical split window and switches to it
nnoremap <leader>w <C-w>v<C-w>l

" moving among splits                                                           
nnoremap <C-h> <C-w>h                                                           
nnoremap <C-j> <C-w>j                                                           
nnoremap <C-k> <C-w>k                                                           
nnoremap <C-l> <C-w>l

" autosave
au FocusLost * :wa

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" sane split directions
set splitright
set splitbelow

" omg no beeps
set visualbell

" auto load changed files
set autoread

" assume /g on substitutions
set gdefault

" set the terminal's title
set title

" backups
set nobackup
set nowritebackup
set tags=./tmp/tags,./tags,tags
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//

" fuzzy matching settings
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" Insert the current directory into a command-line path
cmap <C-P> <C-R>=expand("%:p:h") . "/"

colorscheme solarized

if has("gui_running")
  set transparency=6

  " no menubar
  set guioptions=-m

  let os = substitute(system('uname'), "\n", "", "")
  if os == "Linux"
    set guifont=Inconsolata\ 14
  else
    set guifont=Inconsolata:h14
  endif
endif

" TODO:
"   * make parentheses different lightness of same color
"     ** not rainbow parentheses
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"   Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"   Plugin 'L9'
" Git plugin not hosted on GitHub
"   Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"   Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"   Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"   Plugin 'ascenator/L9', {'name': 'newL9'}

" ###Color Schemes
Plugin 'roosta/srcery'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"   filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable termguicolors in terminals like iTerm2 or macOS terminal.app
" or
" Enable t_Co=256 otherwise
set termguicolors
"   set t_Co=256

" Set the color scheme
colorscheme srcery

" srcery:Enables bold text. default: 1
"let g:srcery_bold


" srcery:Enables italic text. default: gui 1, term 0
"let g:srcery_italic


" srcery:Enables underlined text. default: 1
"let g:srcery_underline

" srcery:Enables undercurled text. default: 1
"let g:srcery_undercurl

" srcery:Enables inverse colors. default: 1
"let g:srcery_inverse


" srcery:Change how highlighted matching parenthesis look.
" When enabled will invert matching parens making the match more visible
" Disabled and the match will light up as bryellow bold.
" Works best with Rainbow parenthesis
" default: 0
"let g:srcery_strong_match_paren


" Set Airline Theme
let g:airline_theme='kalisi'

" Enable syntax highlighting
syntax enable
set colorcolumn=73,80  " Create a ruler at column number 80 to help follow PEP8
set autoindent         " New lines inherit indentation level
set expandtab          " Convert tabs to spaces

" When shifting lines, round the indentation to the nearest multiple of the
" following shiftwidth variable
set shiftround
set shiftwidth=4

"set smarttab
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing

set encoding=utf-8  " Use UTF-8 encoding to have support for unicode

set linebreak       " Never line wrap in the middle of a word

" Disable terminal error bells
set noerrorbells
set novisualbell
set belloff=all

set history=1000    " Increase the undo limit

" Show command in bottom bar
"set showcmd

set nocursorline    " Do not highlight current line
set showmatch       " Highlight matching parentheses, brackets, etc.
"set number         " Enable line numbers
set laststatus=2
set ruler

" Line height of command line
" This is the bottom line underneath status line
set cmdheight=1
set ttimeoutlen=10        " Set timing for leaving insert mode
let g:bufferline_echo = 0 " Disable automatic echoing to bufferline
set noshowmode          " Disable default command line indicator
set hidden              " Allow hidden buffers, Vim will act more like other text editors
set lazyredraw          " redraw only when we need to

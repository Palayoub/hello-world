set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme blue
"set backspace=2
set backspace=indent,eol,start

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
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set path+=/usr/local/Cellar/gcc5/5.4.0/include/c++/5.4.0/**

"TRYYYY
"set clipboard=unnamedplus
set clipboard+=unnamed
"TRY2222222
nmap t :tabedit %<CR>
nnoremap <S-t>     :tabnext<CR>
nnoremap <C-t>    :tabprevious<CR>
"nnoremap <C-S-t>     :tabprevious<CR>
"Ionic
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]
"Line number highlighted
set incsearch
"Map for NerdTree
map <C-n> :NERDTreeToggle<CR>
"Indent blank line
inoremap <CR> <CR>x<BS>
"Other Paramaters
syntax on                   " switch syntax highlighting on
set autoread 

set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors"
"Compile and run program
nnoremap <c-p> :!clear && go %:r; ./%:r<CR>
nnoremap <c-o> :!clear && javac %:r.java && java %:r<CR>
" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

"Line highlighitng
set cursorline
highlight CursorLine  cterm=bold
"Cursor exclusive
set number                  " show line numbers
set ruler
" set relativenumber          " show relative line numbers

set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent

" toggle invisible characters
set list
set listchars=tab:→\ ,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest
" Splits moves
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Syntaxic and GCC
let g:syntastic_cpp_compiler = "g++-5"
let g:syntastic_cpp_compiler_options = "-std=c++11"

"Tab indent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" Window resizing mappings /*{{{*/
nnoremap <S-h> :vertical resize -5<cr>
nnoremap <S-j> :resize +5<cr>
nnoremap <S-k> :resize -5<cr>
nnoremap <S-l> :vertical resize +5<cr>

"inoremap <silent> <Esc> <Esc>`^
"set selection=exclusive

"Git
set diffopt+=vertical
" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
let g:airline_theme='light'
set laststatus=2


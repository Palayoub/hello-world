set nocompatible              " be iMproved, required
set autoread
if has("gui_macvim")
	    let macvim_hig_shift_movement = 1
		:autocmd BufNewFile,BufRead * :cd %:p:h
		"set guicursor+=i:blinkwait0
endif
filetype off                  " required
colorscheme brogrammer
"colorscheme ayoub
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
Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'artur-shaik/vim-javacomplete2'

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

autocmd FileType java setlocal omnifunc=javacomplete#Complete
"TRYYYY
"set clipboard=unnamedplus
set clipboard+=unnamed
"TRY2222222
nmap t :tabedit %<CR>
nnoremap <C-f>     :tabnext<CR>
nnoremap <C-d>    :tabprevious<CR>
map <C-y> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-u> g]
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
set term=screen-256color
"Compile and run program
nnoremap <c-p> :!clear && go %:p:r; ./%:r<CR>
nnoremap <c-o> :!clear && javac *.java && java %:r<CR>
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
"nnoremap <c-Up> :resize +5<cr>
"nnoremap <c-Down> :resize -5<cr>
vnoremap <S-j> 5j
vnoremap <S-k> -5k
nnoremap <S-j> :+5<CR>
nnoremap <S-k> :-5<CR>
nnoremap <S-l> :vertical resize +5<cr>
nnoremap <C-c> :resize +5<cr>
nnoremap <C-,> :resize -5<cr>
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
set mouse=a
set laststatus=2


let g:ctrlp_map = '<c-i>'
let g:ctrlp_cmd = 'CtrlP'






"<<<<<<<<<<<<<<<NEOCOMPLETE>>>>>>>>>>>>>>"






"th te: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"Syntaxic Disable and enable


nnoremap <c-c> :SyntasticCheck<CR>
nnoremap <c-x> :SyntasticToggleMode<CR>




"Explore

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        Vexplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction
"map <silent> <C-E> :call ToggleVExplorer()<CR>
map <C-N> :Lexplore %:p:h<CR>
"map <C-E> :Vexplore<CR>
" Hit enter in the file browser to open the selected
" file with :vsplit to the right of browser
"let g:netrw_brows_split = 4
"let g:netrow_altv = 1

" Default to tree mode
"let g:netrw_banner = 0
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = -1
"map <C-V> :Ex<CR>
"
let g:netrw_banner = 0
"let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 0

"set tags= %:p:h;

"if filereadable("./.vimrc")

"if filereadable("tags")
	"set tags=%:p:h/tags;
"endif

"call SomeCheck()
"endif


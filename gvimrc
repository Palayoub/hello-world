"Change font
set guifont=Monaco\ \for\ \Powerline:h15
vnoremap <S-M-Right> e
vnoremap <S-M-Left> b
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
  " Alt + Up/Down for faster vertical cursor movement
map <A-Down> 4j
imap <A-Down> <Esc>4ji
map <A-Up> 4k
imap <A-Up> <Esc>4ki
"Moving lines
"nnoremap <C-m> :m .+1<CR>
"nnoremap <S-m> :m .-2<CR>
"inoremap <C-m> <Esc>:m .+1<CR>==gi
"inoremap <S-m> <Esc>:m .-2<CR>==gi
"vnoremap <C-m> :m '>+1<CR>gv=gv
"vnoremap <S-m> :m '<-2<CR>gv=gv

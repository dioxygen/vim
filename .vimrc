set nu

call plug#begin('~/.vim/plugged')

" 延迟按需加载，使用到命令的时候再加载或者打开对应文件类型才加载
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"molokai
Plug 'tomasr/molokai'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Initialize plugin system

call plug#end()

" NERDTree 配置
"map F2 to open NERDTree
map <F2> :NERDTreeToggle<CR>

"airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2  "永远显示状态栏

"airline
let g:airline_powerline_fonts = 1
"关闭tabline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
 " old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

syntax on
syntax enable
set background=dark
set t_Co=256
colorscheme molokai
set nocompatible    "去掉对vi的兼容

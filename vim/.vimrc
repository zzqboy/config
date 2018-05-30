" ----------基本设置---------
" 状态标尺
set ru

" 语法
syntax on

" 编码
set encoding=utf-8
set langmenu=zh_CN.UTF-8

" 行号
set nu

" ----------编辑设置---------
" 缩进
set sw=4
set ts=4
set et
set smarttab

" 断行
set tw=78
set lbr
set fo+=mB


" ----------c++设置---------
" 括号
set sm

" 缩进
set cin
set cino=:0g0t0(sus
set ai

" ----------插件设置---------
" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" MiniBufExplorer
let g:miniBufExplMaxSize = 2

" nerdtree
map <C-n> :NERDTree<CR>

" molokai
colorscheme molokai
set t_Co=256
set background=dark

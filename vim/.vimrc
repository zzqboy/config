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

" taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"


set mouse=c

" taglist
map <C-t> :TlistToggle<CR>

" omnicppcomplete
set tags+=~/.vim/tags/cpp_src/tags
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest

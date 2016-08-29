
"""""""""""""""""""""""""""" vim 基础配置
syntax on
filetype plugin indent on

set ai
set nocompatible         " 不兼容模式
set showmatch
set autoread
set ignorecase
set hls
set number
set expandtab            " 启用tab键加空格
set shiftwidth=2
set tabstop=2
set laststatus=2
set bs=2
set fileencodings=utf-8
set scrolloff=5          " 设置滚动时最低行数
set title
set ruler
set termencoding=utf-8
set encoding=utf-8
set wrap                  " 设置linewrap
set textwidth=0
set mouse=a               " 启用鼠标
set autoindent            " 配置缩进
set copyindent            " 配置缩进
set pastetoggle=<F12>     " 配置copy、paste 的开关，利用缩进
" set virtualedit=all     " 光标可以停留在任何地方
" colorscheme evening
" set foldmethod=syntax


let mapleader = ','       " 把<leader> 表示的反斜杠换成逗号


""""""""""""""""""""""""""" 插入模式下快捷键设置
imap <leader><leader> <Esc>             " 使用 ,, 代替Esc 退出编辑模式


""""""""""""""""""""""""""" nomarl 模式下快捷键设置
map <leader>s :w<CR>      " 使用,s 代替保存快捷键
map <leader>q :q<CR>      " 使用,q 代替退出快捷键
map <leader>c :close<CR>  " 使用,c 代替关闭window 的快捷键


""""""""""""""""""""""""""" 美化 cursorline
color desert
set cursorline
" set cuc cul
hi Cursorline term=bold cterm=bold
hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
hi CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
autocmd InsertEnter * hi Cursorline ctermbg=LightGreen ctermfg=none term=bold cterm=bold
autocmd InsertLeave * hi Cursorline ctermbg=none ctermfg=none term=bold cterm=bold


""""""""""""""""""""""""""" NERDTree 文件浏览器
" autocmd VimEnter * NERDTree
let NERDTreeWinPos = 'right'
let NERDTreeShowBookmarks = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>


"""""""""""""""""""""""""""" airline 导航状态标签
let g:airline_theme = 'luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1            " 开启tabline
let g:airline#extensions#tabline#buffer_nr_show = 1     " 显示编号
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
map b[ :bp<CR>
map b] :bn<CR>
map <leader>d :bdelete<Space>
map <leader>w :bd<CR>
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>


"""""""""""""""""""""""""""" ctrlP 查找文件，buffer
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"""""""""""""""""""""""""""" vim-prosession 打开上次关闭时已打开的标签
" 会在~/.vim 目录下创建一个 session 目录


"""""""""""""""""""""""""""" vim-trailing-whitespace 检查末尾空格符
map <leader>fs :FixWhitespace<CR>       " 去掉行尾空格


"""""""""""""""""""""""""""" MatchTagAlways 高亮匹配标签
map <leader>m :MtaJumpToOtherTag<CR>    " 跳到对应的标签


"""""""""""""""""""""""""""" Emmet 快速代码
" html:5 然后按 <c-y>, 就是实现


"""""""""""""""""""""""""""" fugitive 友好的git 服务
" :Gstatus  光标落到文件处按 dv


"""""""""""""""""""""""""""" vim-multiple-cursors 多光标
" ctrl + n 选择一个  选完之后按 v 或c  再按a 就可以编辑了
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'


"""""""""""""""""""""""""""" nerdcommenter 注释
" <leader>cc         加上注释
" <leader>cu         解开注释
" <leader>c<space>   加上、解开注释，智能判断
" <leader>cy         先复制，再注解  p可以进行粘贴
let g:NERDSpaceDelims = 1    " 注释的时候自动加个空格


"""""""""""""""""""""""""""" neocomplete 代码补全 需要vim with lua
let g:neocomplete#enable_at_startup = 1     " 自动开启补全
map <silent><F4> :NeoCompleteToggle<CR>     " 开启或关闭自动补全


"""""""""""""""""""""""""""" easymotion 光标快速移动
let g:EasyMotion_leader_key = '<Space>'  " 空格加w 或者加b 就可以呼出 easymotion 了


"""""""""""""""""""""""""""" UltiSnips 代码片段
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'




" 启动 pathogen 插件
execute pathogen#infect()

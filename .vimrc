
""""""  vim 基础配置  """"""
" 唤起 pathogen 插件
execute pathogen#infect()
" 开启语法高亮
syntax on
" 开启缩进
filetype plugin indent on
" <Esc> 代表Escape键； <CR>代表Enter键； <D>代表Command键；
" <M-key>或<A-key>代表Alt键；<C>代表Ctrl键； <S>代表Shift键；
" 组合键可以用 <C-Esc>代表Ctrl-Esc键；<S-F1>代表Shift-F1键；
" 使用 imap 命令 Control+i 退出插入模式
:imap <C-I> <Esc>

""""""  NERDTree 配置  """""""
" 自动打开 au
" autocmd VimEnter * NERDTree
" D-1 就是 command+1 开启文件浏览器
map <C-O> :NERDTreeToggle<CR>
" 在文件浏览器中定位当前文件
map <C-D> :NERDTreeFind<CR>
" 显示位置
let NERDTreeWinPos = "right"
" 自动显示 Bookmarks
let NERDTreeShowBookmarks = 1
" 关闭文件的同时关闭文件浏览器
let NERDTreeQuitOnOpen = 1

""""""  CommandT 配置  """"""
" 打开文件定位窗口
" nnoremap <slient> <D-R> :CommandT <CR>
" 打开最近打开的文件列表
" nnoremap <slient> <D-E> :CommandTBuffer <CR>

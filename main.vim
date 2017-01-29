""""""""""""""""""""""""""""""""""""""""""""""
" 配色
set background=dark
colorscheme solarized
"colorscheme molokai
"colorscheme phd
""""""""""""""""""""""""""""""""""""""""""""""
" 语言和编码方式
" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}
""""""""""""""""""""""""""""""""""""""""""""""
" 显示设置
" 禁止光标闪烁
" set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 高亮当前行\列
set cursorline
set cursorcolumn
" 高亮搜索结果
set hlsearch
" 开启行号显示
set number
""""""""""""""""""""""""""""""""""""""""""""""
" 打印当前时间
"map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

" 复制当前文件/路径到剪贴板
nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" 复制与粘贴快捷键
imap <C-v> "+gP
vmap <C-c> "+y
vnoremap <BS> d
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
imap <C-V>      "+gP
map <S-Insert>      "+gP
cmap <C-V>      <C-R>+
cmap <S-Insert>     <C-R>+
""""""""""""""""""""""""""""""""""""""""""""""
" tab设置
let mapleader=","

nmap <leader>s :source $VIM/_vimrc<cr>
nmap <leader>e :e $VIM/.vimrc<cr>

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>th :tabp<cr>
map <leader>tl :tabn<cr>
""""""""""""""""""""""""""""""""""""""""""""""
" 行首行尾跳转
nmap LL 0
nmap LE $
""""""""""""""""""""""""""""""""""""""""""""""
"状态栏设置:
"    - 正在编辑的文件名
"    - 正在编辑的文件格式(DOS, Unix)
"    - 当前文件的类型
"    - 当前光标下字符的ASCII和16进制值
"    - 当前光标所在的行和列
"    - 文件的长度(包括行数)
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
""""""""""""""""""""""""""""""""""""""""""""""
" 设置vundle
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
"my Bundle here:
" original repos on github
""""""""""""""""""""""""""""""""""""""""""""""
" 文件浏览器
Bundle 'scrooloose/nerdtree'
map <F4> :NERDTreeMirror<CR>
map <F4> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" 代码设置
" 自适应不同语言的智能缩进
filetype indent on
filetype indent plugin on
syntax on " 代码高亮
set ts=4 " 设置tab键为四个空格
""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'


Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
"""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮开关: ';s'
source ~/.vim/module/syntax.vim
"""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/module/hello.vim






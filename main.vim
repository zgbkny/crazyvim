""""""""""""""""""""""""""""""""""""""""""""""
" 基本设置
" 不兼容老的vi
set nocompatible
" 设置不备份文件 
set nobackup
" 设置不产生swap文件，用户宕机后恢复
set noswapfile
" 历史命令的数量
set history=1024
""""""""""""""""""""""""""""""""""""""""""""""
" 配色
set background=dark
"set transparency=11
"colorscheme solarized
colorscheme molokai
"colorscheme github
"colorscheme railscasts
"colorscheme phd
""""""""""""""""""""""""""""""""""""""""""""""
" GUI
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 窗口大小“
" set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist
"set guifont=Courier\ New:h20
set guifont=Monaco:h18
set lines=50 columns=238
"set guifont=Inconsolata:h16:cANSI
"set guifont=Courier_new:h14:b:cDEFAULT
""""""""""""""""""""""""""""""""""""""""""""""
" 语言和编码方式
" Lang & Encoding {{{
set fileencodings=ucs-bom,utf-8,gbk2312,gbk,gb18030,cp936
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
" key map leader
let mapleader=","
""""""""""""""""""""""""""""""""""""""""""""""
" 打印当前时间
"map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

" 复制当前文件/路径到剪贴板
nnoremap <leader>fn :let @*=substitute(expand("%"), "/", "/", "g")<CR>
nnoremap <leader>fp :let @*=substitute(expand("%:p"), "/", "/", "g")<CR>
""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""normal mode key map""""""""""""
" reload .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" open workspace
"nnoremap <leader>oh :e! ~/code/private/huijin-doc<cr>:cd ~/code/private/huijin-doc<cr>
"nnoremap <leader>on :e! ~/code/private/note<cr>:cd ~/code/private/note<cr>
" use space to select a word 
nnoremap <space> viw 
" move current line to next line
nnoremap - ddp
" move current line to prev line
nnoremap _ ddkkp
" use ctrl-u to U a word
nnoremap <c-u> viwU
nnoremap <c-n> <esc>:bnext<cr>
nnoremap <c-p> <esc>:bprev<cr>
nnoremap <c-a> :ls<cr>
nnoremap <c-o> :w!<cr>:e ~/
nnoremap <leader>o :e! ~/
nnoremap <c-s> <esc>:set number<cr>
nnoremap <c-g> :
nnoremap <c-6> <c-^>
nnoremap <c-tab> <c-^>
""""""""""""""""""""""""""""""""""""""""""""""
" use us style, for better use
nnoremap ： :

" command map
cnoremap 、 /
cnoremap ！ !
cnoremap ， ,
cnoremap 。 .

""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""insert mode key map""""""""""""
" use ctrl-u to U a word
"imap <c-u> <esc>viwUi
inoremap <c-u> <esc>viwUi
" use ctrl-d to delete current line
"imap <c-d> <esc>ddi
inoremap <c-d> <esc>ddi
" use ctrl-w to write file
inoremap <c-w> <esc>:w!<cr>
inoremap <c-o> <esc>:w!<cr>:e ~/
inoremap <cr> <cr>
""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""visual mode key map""""""""""""
" 
""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <c-o> <esc>:w!<cr>:e ~/
" 复制与粘贴快捷键
" 其中 "+ 代表系统粘贴板
inoremap <D-v> <esc>"+p
nnoremap <D-v> "+p
imap <C-v> "+gP
vmap <D-c> "+y
vmap <C-c> "+y
vnoremap <BS> d
vnoremap <D-C> "+y
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
inoremap <D-V> <esc>"+p
imap <C-V> "+gP
map <S-Insert> "+gP
cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+
""""""""""""""""""""""""""""""""""""""""""""""
" tab设置

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
filetype plugin on
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
"my Bundle here:
" original repos on github
""""""""""""""""""""""""""""""""""""""""""""""
" 文件浏览器
"Bundle 'scrooloose/nerdtree'
"map <F4> :NERDTreeMirror<CR>
"map <F4> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" 代码设置
" 自适应不同语言的智能缩进
filetype indent on
filetype indent plugin on
syntax on " 代码高亮
set ts=4 " 设置tab键为四个空格
""""""""""""""""""""""""""""""""""""""""""""""
" 文件搜索
Bundle 'ctrlpvim/ctrlp.vim'
"nnoremap <leader>
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'
noremap <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=150
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

Bundle 'tacahiroy/ctrlp-funky'
nnoremap <leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']

""""""""""""""""""""""""""""""""""""""""""""""
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'suan/vim-instant-markdown'


"Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
"Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
"Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
"Bundle 'YankRing.vim'
"Bundle 'vcscommand.vim'
"Bundle 'ShowPairs'
"Bundle 'SudoEdit.vim'
"Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'VimIM'
"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮开关: ';s'
source ~/.vim/module/syntax.vim
"""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/module/hello.vim






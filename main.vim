"""""""""""""""""""""""""""""""""""""""""""""""
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
" 语法高亮开关
source ~/.vim/module/syntax.vim
"""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/module/hello.vim






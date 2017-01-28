"状态栏设置:
"    - 正在编辑的文件名
"    - 正在编辑的文件格式(DOS, Unix)
"    - 当前文件的类型
"    - 当前光标下字符的ASCII和16进制值
"    - 当前光标所在的行和列
"    - 文件的长度(包括行数)
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


function! Hello()
            echo "hello, world"

endfunction

command! -nargs=0 Helloworld call Hello()

" 关闭兼容vi模式(不关闭会失去很多vim特性)
set nocompatible

" 在底部显示当前模式 
set showmode 

" 显示模式下显示输入的指令
set showcmd

"支持使用鼠标
set mouse=a

"启用256色
set t_Co=256

" 禁止生成 swap 恢复文件
" 早期计算机经常崩溃，vim 会自动创建一个 .swp 结尾的文件
" 崩溃重启后可以从 .swap 文件恢复
" 现在计算机鲜少崩溃了，可以禁用此功能
set noswapfile

" vim 内部使用的编码，默认使用 latin1，改成通用的 utf8 编码，避免乱码
set encoding=utf-8

" 文件编码探测列表
" vim 启动的时候会依次使用本配置中的编码对文件内容进行解码
" 如果遇到解码失败，则尝试使用下一个编码
" 常见的乱码基本都是 windows 下的 gb2312, gbk, gb18030 等编码导致的
" 所以探测一下 utf8 和 gbk 足以应付大多数情况了
set fileencodings=utf-8

"使用以下设置，每次点击Tab键，增加的缩进将被转化为4个空格
" 按下Tab显示的空格数量
set tabstop=4
" Tab转换成空格数量
set softtabstop=4
set shiftwidth=4
" 文本上按下>>(增加一级缩进) <<(取消一级缩进) ==(取消全部缩进)
set expandtab

" 在插入模式按回车时 vim 会自动根据上一行的缩进级别缩进
set autoindent

" 修正 vim 删除/退格键行为
" 原生的 vim 行为有点怪：
" 如果你在一行的开头切换到插入模式，这时按退格无法退到上一行
" 如果你在一行的某一列切换到插入模式，这时按退格无法退删除这一列之前的字符
" 如果你开启了 autoindent，按回车时 vim 会根据上一行自动缩进，这时按退格无法删除缩进字符
" 通过设置 eol, start 和 indent 可以修正上述行为
" set backspace=eol,start,indent

"是否显示状态栏。0 表示不显示，1 只显示一行，2 表示显示两行
set laststatus=2

"在状态栏显示光标的当前位置（位于哪一行哪一列）
set ruler

" 高亮第 80 列，推荐
" 我自己看着难受，先关掉
" set colorcolumn=80

" 高亮光标所在行，推荐
set cursorline

" 显示窗口比较小的时候折行展示，不然需要水平翻页，推荐
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set linebreak

" 自动折行
set wrap

" 开启语法高亮
syntax on

" 开启自动识别文件类型，并根据文件类型加载不同的插件和缩进规则
filetype plugin indent on

" 显示行号
set number

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 搜索时，高亮显示匹配结果
set hlsearch

" 搜索时忽略大小写
set ignorecase

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
set wildmenu
set wildmode=longest:list,full



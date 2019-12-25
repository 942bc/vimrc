" *******************NERDTree*********************************
" 下载插件 git clone https://github.com/scrooloose/nerdtree  ~/.vim/pack/vendor/start/nerdtree
"打开/关闭Tree菜单 \ + t
nnoremap <silent> <leader>t :NERDTreeToggle<cr>
"定位到指定文件
nnoremap <silent> <leader>f :NERDTreeFind<cr>

" 显示行号
" let NERDTreeShowLineNumbers=1
" let NERDTreeAutoCenter=1
" " 是否显示隐藏文件
let NERDTreeShowHidden=1

" 设置宽度
" let NERDTreeWinSize=31

" 在终端启动vim时，共享NERDTree
" let g:nerdtree_tabs_open_on_console_startup=1

" 忽略以下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" 显示书签列表
" let NERDTreeShowBookmarks=1

"显示git信息
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"*************************vim-racer********************************
"首先要安装rust和racer
"git clone https://github.com/racer-rust/vim-racer.git ~/.vim/pack/plugins/start/vim-racer
let g:rustfmt_autosave = 1
set hidden
let g:racer_cmd = "/home/kurt/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap gt <Plug>(rust-def-tab)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


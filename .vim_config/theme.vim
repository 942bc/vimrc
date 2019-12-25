" 先下载主题 git clone https://github.com/jacoborus/tender.vim ~/.vim/pack/vendor/start/tendor

" 开启 24 位真彩色支持
" 24位真彩色信息请参考 https://gist.github.com/XVilka/8346728
set termguicolors

" 设置主题
color tender

" tender 默认背景色是一种亮灰色，晚上特别不舒服，改成纯黑
" highlight Normal guibg=#000001

" 改背景后选中区域无法高亮，也得调一下
highlight Visual guibg=#323232

" 灰色的状态栏很扎眼，调一下
highlight StatusLine guibg=#444444 guifg=#b3deef

" vim 的 terminal 状态栏需要单独配置
highlight StatusLineTerm guibg=#444444 guifg=#b3deef
highlight StatusLineTermNC guibg=#444444 guifg=#999999


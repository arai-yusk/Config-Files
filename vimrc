set number

set expandtab
set tabstop=2
set shiftwidth=2

set autoindent
set smartindent

" utf-8で文字が重なって表示される場合
"set ambiwidth=double

set nrformats-=octal

set hlsearch

set wildmenu

syntax on
set mouse=a

nnoremap <S-tab> <<
inoremap <S-tab> <C-d>

" ベル音を消す: .inputrc ではvim のベルが消せない
set visualbell t_vb=


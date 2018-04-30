set encoding=utf-8
scriptencoding utf-8

set wildmenu "コマンドモードの保管
set history=5000 "保存するコマンドの数

set lines=35
set columns=90

set nowritebackup
set nobackup
set noswapfile

set number
" set whichwrap=b,s,h,l,<,>,[,],‾  " カーソルの行頭移動が可能
set cursorline
set showmatch
set visualbell
set colorcolumn=80
set pumheight=10

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

nnoremap ; :
nnoremap : ;
" 分割・タブの設定
nnoremap s <Nop>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap s= <C-w>=
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap sq :<C-u>q<CR>

" 挿入からノーマルへ
inoremap <silent> jj <ESC>

" 閉じカッコ入力
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap { {}<Left>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap [ []<Left>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap ( ()<Left>

" キー割り当て
nnoremap <S-h> ^
nnoremap <S-j> {
nnoremap <S-k> }
nnoremap <S-l> $
nnoremap == gg=G<CR>
nnoremap ,v :sp ‾/.vimrc<CR>
nnoremap <S-q> :wq<CR>

" 検索
set incsearch
set wrapscan
set hlsearch

" C言語用設定
source ‾/.vim/mycmd/c_template/c_template.vim
autocmd BufNewFile *.c 0r ‾/.vim/template/temp.c

" tex用設定
source ‾/.vim/mycmd/tex_temp/tex_temp.vim
autocmd BufNewFile *.tex 0r ‾/.vim/template/temp.tex

" python用設定
source ‾/.vim/mycmd/py_template/py_template.vim
source ‾/.vim/mycmd/py_template/mat_font.vim
autocmd BufNewFile *.py 0r ‾/.vim/template/temp.py

" java用設定
autocmd BufNewFile *.java 0r ‾/.vim/template/temp.java

set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=‾/.vim/bundle/neobundle.vim

  call neobundle#begin(expand('‾/.vim/bundle'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'kana/vim-operator-user'
  " jedi-vim
  NeoBundle 'davidhalter/jedi-vim'
  " supertab
  NeoBundle 'ervandew/supertab'
  " quickrun
  NeoBundle 'thinca/vim-quickrun'
  " flake8
  NeoBundle 'andviro/flake8-vim'
  " autopep8
  NeoBundle 'tell-k/vim-autopep8'
  " indent-guides
  NeoBundle 'nathanaekale/vim-indent-guides'
  " syntastic
  NeoBundle 'scrooloose/syntastic'
  " カラースキーム
  NeoBundle 'tomasr/molokai'
  NeoBundle 'sjl/badwolf'
  NeoBundle 'nanotech/jellybeans.vim'
  NeoBundle 'W0ng/vim-hybrid'
  NeoBundle 'jpo/vim-railscasts-theme'
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'vim-scripts/rdark'
  NeoBundle 'hachy/eva01.vim'
  NeoBundle 'vim-scripts/twilight'
  NeoBundle 'tyrannicaltoucan/vim-deep-space'
  " Unite.vim
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/unit-outline'
  NeoBundle 'ujihisa/unite-colorscheme'
  " NERDTree
  NeoBundle 'scrooloose/nerdtree'
  " lightline
  NeoBundle 'itchyny/lightline.vim'
  " Fixwhitespace
  NeoBundle 'bronson/vim-trailing-whitespace'
  " indentLine
  NeoBundle 'Yggdroot/indentLine'
  " submode.vim
  NeoBundle 'kana/vim-submode'
  " tex-conceal
  NeoBundle 'KeitaNakamura/tex-conceal.vim'
  " vin-tags
  NeoBundle 'szw/vin-tags'
  " vin-endwise
  NeoBundle 'tpope/vim-endwise'
  " emmet-vim
  NeoBundle 'mattn/emmet-vim'
  " surround.vim
  NeoBundle 'taichouchou2/surround.vim'
  " open-browser.vim
  NeoBundle 'open-browser.vim'
  " javacomplete2
  NeoBundle 'artur-shaik/vim-javacomplete2'
  " neosnippet
  NeoBundle 'Shougo/neosnippet'
  " neosnippets-snippets
  NeoBundle 'Shougo/neosnippet-snippets'
  call neobundle#end()

endif

filetype plugin indent on

" neobundle.log
let g:neobundle#log_filename = $HOME."/neobundle.log"

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" vim-quickrunの設定
au FileType af nnoremap <silent><buffer>q :quit<CR>
let g:quickrun_config={'_': {'split': ''}}
set splitbelow
let g:quickrun_config={'_': {'hook/time/enable': '1'}}

" supertabの設定
let g:SuperTabContextDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"

"カラースキームの設定
set t_Co=256
colorscheme torte
syntax on

"ステータスラインの設定
set laststatus=2
set showmode
set showcmd
set ruler

"Syntasticの設定
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_python_checkers = ['pep8']

" NERDTreeの設定
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" tex-conceal用設定
set conceallevel=2
let g:tex_conceal="adgmb"

" neosnippetの設定
" Plugin key-mappings
" Note: It must be "imap" and "smap". It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap". It uses <Plug> mappings.
" imap <expr><TAB>
" ¥ pumvisible() ? "¥<C-n>" :
" ¥ neosnippet#expandable_or_jumpable() ?
" ¥     "¥<Plug>(neosnippet_expand_or_jump)" : "¥<TAB>"
smap <expr><TAB>(neosnippet#expandable_or_jump)": "¥<TAB>"

" For conceal markers.
if has ('conceal')
    set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#snippets_directory='‾/.vim/bundle/neosnippet-snippets/snippets,‾/.vim/snippets'

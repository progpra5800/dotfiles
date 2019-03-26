set encoding=utf-8

set wildmenu "コマンドモードの保管
set history=5000 "保存するコマンドの数

set nowritebackup
set nobackup
set noswapfile

set number
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
nnoremap <C-k> <Nop>

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
nnoremap <S-k> {
nnoremap <S-j> }
nnoremap <S-l> $
nnoremap == gg=G<CR>
nnoremap ,v :sp ~/.vimrc<CR>
nnoremap ,z :sp ~/.zshrc<CR>
nnoremap <S-q> :wq<CR>

" 検索
set incsearch
set wrapscan
set hlsearch

" fortran用設定
autocmd BufRead,BufNewFile *.f90 setfiletype fortran
autocmd BufNewFile *.f90 0r ~/.vim/temp/temp.f90
" C言語用設定
"source ‾/.vim/mycmd/c_temp/c_temp.vim
autocmd BufRead,BufNewFile *.c setfiletype c
autocmd BufNewFile *.c 0r ~/.vim/temp/temp.c
autocmd BufNewFile *.cpp 0r ~/.vim/temp/temp.cpp
"
" tex用設定
" source ‾/.vim/mycmd/tex_temp/tex_temp.vim
autocmd BufNewFile *.tex 0r ~/.vim/temp/temp.tex
"
" python用設定
autocmd BufRead,BufNewFile *.py setfiletype python
autocmd BufNewFile *.py 0r ~/.vim/temp/temp.py
"
" java用設定
autocmd BufNewFile *.java 0r ~/.vim/temp/temp.java

" html用設定
autocmd BufRead,BufNewFile *.html setfiletype html
set nocompatible

filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim

  call neobundle#begin(expand('~/.vim/bundle'))
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
  NeoBundle 'nathanaelkane/vim-indent-guides'
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
  NeoBundle 'Shougo/unite-outline'
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
  " NeoBundle 'KeitaNakamura/tex-conceal.vim'
  " vim-latex
  NeoBundle 'lervag/vim-latex'
  " vin-tags
  NeoBundle 'szw/vim-tags'
  " vin-endwise
  NeoBundle 'tpope/vim-endwise'
  " surround.vim
  NeoBundle 'tpope/vim-surround'
  " open-browser.vim
  NeoBundle 'open-browser.vim'
  " javacomplete2
  NeoBundle 'artur-shaik/vim-javacomplete2'
  "" neocomplete
  "NeoBundle 'Shougo/neocomplete'
  "" neocomplcache
  "NeoBundle 'Shougo/neocomplcache'
  "" neosnippet
  "NeoBundle 'Shougo/neosnippet'
  "" neosnippets-snippets
  "NeoBundle 'Shougo/neosnippet-snippets'
  "emmet.vim
  NeoBundle 'mattn/emmet-vim'
  " open-browser
  NeoBundle 'open-browser.vim'
  NeoBundle 'mattn/webapi-vim'
  " vim-css3-syntax
  NeoBundle 'hail2u/vim-css3-syntax'
  NeoBundle 'taichouchou2/html5.vim'
  " vim-javascript
  NeoBundle 'pangloss/vim-javascript'
  " vim-coffee-script
  NeoBundle 'kchmck/vim-coffee-script'
  " vim-nodejs-complete
  NeoBundle 'myhere/vim-nodejs-complete'
  " slimv
  NeoBundle 'kovisoft/slimv'
  " vim-clang
  " NeoBundle 'justmao945/vim-clang'

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
let g:quickrun_config={'*':{'split': ''}}
set splitbelow
let g:quickrun_config={'*':{'hook/time/enable':'1'}}

" supertabの設定
let g:SuperTabContextDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"

" jedi-vimの設定
autocmd FileType python setlocal completeopt-=preview

"カラースキームの設定
set t_Co=256
colorscheme solarized
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

let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets,~/.vim/snippets'

" pyflakes-vimの設定
" let g:syntastic_mode_map = {
"             \ 'mode': 'active',
"             \ 'active_filetypes': ['php', 'coffeescript', 'sh', 'vim'],
"             \ 'passive_filetypes': ['html', 'haskell', 'python']
"             \}
"
" open-browser
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)

" vim-nodejs-complete
autocmd Filetype javascript setlocal omnifunc=nodejscomplete#CompleteJS
if !exists('g:neocomplcache_omni_functions')
    let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions.javascript = 'nodejscomplete#CompleteJS'

let g:node_usejscomplete = 1
imap <C-f> <C-x><C-o>

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : ''
            \}

" neocomplete
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" if !exists('g:neocomplete#sources#omni#input_patterns')
"     let g:neocomplete#sources#omni#input_patterns = {}
" endif
" let g:neocomplete#sources#omni#input_patterns.python = ''
"
" vim-clang
" disable auto completion for vim-clang
" let g:clang_auto = 0
" " dfault 'longest' can not work with neocomplete
" let g:clang_c_completeopt = 'menuone'
" let g:clang_cpp_completeopt = 'menuone'
"
" emmet
let g:user_emmet_settings = {
            \ 'lang' : 'ja'
            \}

colorscheme molokai

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

nnoremap <C-p> :w<CR>:Q<CR>
nnoremap <C-s> :w<CR>:!python % build_ext --inplace<CR>

let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
" Not show popup
autocmd FileType python setlocal completeopt-=preview

python3 << EOF
import sys
import os

home = os.path.expanduser("~")
path = home + "/anaconda3/lib/python3.6/site-packages"
if not path in sys.path:
	sys.path.insert(0, path)
path = home + '/anaconda3/envs/'
for i in os.listdir(path):
    path2 = path + i + '/lib/python3.6/site-packages'
    print(path2)
    if not path2 in sys.path:
        sys.path.insert(0, path2)
EOF

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

nnoremap <C-t> :w<CR>:!latexmk %<CR>:!evince %:r.pdf &<CR>

vim9script

noremap <buffer> <silent> <leader>r :!clear && go run %:p:h<CR>
noremap <buffer> <silent> <leader>t :!clear && go test %:p:h<CR>
# this messes up sometimes
# autocmd BufWritePre * LspFormat

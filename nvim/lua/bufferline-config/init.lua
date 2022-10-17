require("bufferline").setup{}
vim.cmd[[
nnoremap <silent><C-t> :BufferLineCycleNext<CR>
nnoremap <silent><S-t> :BufferLineCyclePrev<CR>
nnoremap <silent>d] :bdel<CR>
nnoremap <silent>[f :BufferLineMoveNext<CR>
nnoremap <silent>f[ :BufferLineMovePrev<CR>
]]

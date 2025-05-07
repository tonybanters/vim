" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

" Register intelephense for PHP
let lspServers = [#{
      \ name: 'intelephense',
      \ filetype: ['php'],
      \ path: 'intelephense',
      \ args: ['--stdio']
      \ }]
autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType php setlocal omnifunc=lsp#complete

" gl to show diagnostics in a floating window

" Custom diagnostic sign characters
sign define LspErrorSign text=✘ texthl=LspErrorSign
sign define LspWarningSign text=▲ texthl=LspWarningSign
sign define LspInformationSign text=» texthl=LspInformationSign
sign define LspHintSign text=⚑ texthl=LspHintSign


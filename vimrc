vim9script

filetype plugin indent on
colo industry
source $VIMRUNTIME/defaults.vim
g:mapleader = " " 
set shiftwidth=2 softtabstop=2 tabstop=2
set number termguicolors 
set mouse=a signcolumn=yes laststatus=2
set belloff=all
set incsearch smartcase ignorecase 
set wildoptions=pum

packadd lsp
packadd vim-commentary
packadd vim-elixir

call LspAddServer([{
	\    name: 'golang',
	\    filetype: ['go', 'gomod'],
	\    path: '/home/rasmus/go/bin/gopls',
	\    args: ['serve'],
	\    syncInit: v:true
	\  }])

call LspAddServer([{
	\    name: 'elixir',
	\    filetype: ['elixir', 'eelixir', 'heex', 'surface'],
	\    path: '/home/rasmus/Downloads/elixir-ls-v0.20.0/language_server.sh',
	\    args: [],
	\    syncInit: v:true
	\  }])

call LspOptionsSet({
	usePopupInCodeAction: v:true,
	showDiagOnStatusLine: v:true,
})

noremap <silent> K :execute('LspHover')<CR>
noremap <silent> gd :execute('LspGotoDefinition')<CR>
noremap <silent> <leader>f :execute('LspFormat')<CR>
noremap <silent> <leader>e :execute('LspDiagCurrent')<CR>
noremap <silent> <leader>ne :execute('LspDiagNext')<CR>
noremap <silent> <leader>Ne :execute('LspDiagPrev')<CR>

call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-dispatch'

call plug#end()

colorscheme wal

filetype plugin indent on
syntax enable

set encoding=utf-8

" Statusline
set nu rnu
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

" Ignore case almost always
set ignorecase smartcase

set spelllang=en,es,fr

set incsearch

set wildmenu
		
" Undofile
set undofile

inoremap <silent> kj <Esc>

" Toggle spell checking
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>

" Clipboard
set clipboard+=unnamedplus

""  Mappings

" Jump over delimiter
inoremap <S-Tab> <esc>la

" Faster autocompletition
set completeopt+=noinsert
"
inoremap <silent> ,f <C-x><C-f>
inoremap <silent> ,i <C-x><C-i>
inoremap <silent> ,l <C-x><C-l>
inoremap <silent> ,n <C-x><C-n>
inoremap <silent> ,o <C-x><C-o>
inoremap <silent> ,t <C-x><C-]>
inoremap <silent> ,u <C-x><C-u>


function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

call SourceIfExists(".localvim")

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
call plug#end()


"filetype plugin indent on
filetype on

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

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap <F2> :Copen<CR>
inoremap <F2> :Copen<CR>

" Jump over delimiter
inoremap <S-Tab> <esc>la

" Fix the last mistake while typing
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

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

let g:tex_flavor = "latex"

function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction


call SourceIfExists(".localvim")

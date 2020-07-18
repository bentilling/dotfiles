set nocompatible
syntax on

set cursorline
" Relative numbers unless in insert mode.
:set number relativenumber

set tabstop=2 shiftwidth=2 expandtab

let mapleader = ','

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

call plug#begin('~/.vim/plugged')
" Colourscheme
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

" Syntax and linting
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
call plug#end()
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" Search
map <leader><space> :let @/=''<cr> " clear search
:set ignorecase


let g:ale_linters = {
\ 'javascript': ['eslint']
\ }
let g:ale_fixers = {
\ 'javascript': ['eslint']
 \ }
 
"let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

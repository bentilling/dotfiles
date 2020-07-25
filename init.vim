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

Plug 'SirVer/ultisnips'

" Syntax and linting
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

" HTML Helpers
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'

call plug#end()
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

let g:UltiSnipsSnippetDirectories = ['~/Documents/Github/dotfiles/my_snippets']

 let g:closetag_filetypes = 'html,xhtml,jsx,javascript' 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap <S-Tab> <ESC>la

" Remapping ESC
inoremap kj <esc>
cnoremap kj <C-C>

" Search
map <leader><space> :let @/=''<cr> " clear search
:set ignorecase


let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
"let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

"""" 1. Vim Behaviour.
" Use filetype-based syntax hilighting, ftplugins, and indentation.
syntax on
filetype plugin indent on
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number
" Enables mouse support. Note that on Mac OS X this doesn't work well on the
" default terminal.
set mouse=a

"""" 2. Key Bindings.
" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk

""" 3. Vim Appearance.
" Search settings
set hlsearch " hilight
set incsearch " jump to best fit
" Turn off seach hilighting with <CR>.
nnoremap <CR> :nohlsearch<CR><CR>
" Tab settings
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces
set visualbell
set number
" Make statusline appear even with only single window.
set laststatus=2
set termguicolors
set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
cs add cscope.out

"vim plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
" vim: set ft=vim foldmethod=marker ts=4 sw=4 tw=80 et :

inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

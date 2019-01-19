call plug#begin('~/.vim/plugged')
Plug 'zeis/vim-kolor'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug 'vim-scripts/tComment'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-projectionist'
Plug 'posva/vim-vue'
Plug 'w0rp/ale'
call plug#end()

syntax on
colorscheme kolor

set autoindent
set tabstop=2
set sw=2 et
set shiftwidth=2
set smarttab
set softtabstop=2
set noswapfile
set ruler          " show the cursor position all the time
set showcmd        " display incomplete commands
set laststatus=2   " Always display the status line
set vb             " No audible bell

"split panel and move"
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <C-s> :vsp<CR>
noremap <C-t> :tabe<CR>
nnoremap <C-e> :Explore<CR>

"Display full path"
set statusline=%F

:set display+=lastline
:set noswapfile
autocmd Filetype gitcommit setlocal spell textwidth=72
:setlocal spell spelllang=en_us
:set nowrap
:set textwidth=80
match ErrorMsg '\s\+$'

set number relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set number relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<CR>

autocmd BufWritePre * %s/\s\+$//e

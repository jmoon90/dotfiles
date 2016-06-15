set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'zeis/vim-kolor'
Bundle 'vim-scripts/tComment'
Bundle 'rking/ag.vim'
Bundle "Shutnik/jshint2.vim"

syntax on
colorscheme kolor

set guifont=Monaco:h12
set guioptions-=T "Removes top toolbar
set guioptions-=r "Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
let &t_Co=256
highlight NonText ctermbg=black

"js linter"
let jshint2_save = 1
set runtimepath+=~/.vim/bundle/jshint2.vim/

"Moves tabs left and right"
noremap <C-l> :tabn<CR>
noremap <C-h> :tabp<CR>
noremap <C-t> :tabe<CR>

"Display full path"
set statusline=%F

"Blame"
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

"split panel and move"
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
nnoremap <C-s> :vsp<CR>

:set display+=lastline
set rtp+=~/.vim/bundle/vundle/
:set noswapfile
autocmd Filetype gitcommit setlocal spell textwidth=72
:setlocal spell spelllang=en_us
:set nowrap
:set textwidth=80
match ErrorMsg '\s\+$'

set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<CR>

:set autoindent
set tabstop=2
set sw=2 et
set shiftwidth=2
set smarttab
set softtabstop=2
:set noswapfile
set ruler          " show the cursor position all the time
set showcmd        " display incomplete commands
set laststatus=2   " Always display the status line
set vb             " No audible bell

"Display extra whitespace
set list listchars=tab:»·,trail:·

"Grep word underneath cursor"
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"Copy in clipboard to paste outside of vim"
set clipboard=unnamed

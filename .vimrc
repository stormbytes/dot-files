set encoding=utf-8
set t_Co=256

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set nowrap
set backspace=2 " more powerful backspacing

" disable autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Arduino files syntax highlighting as CPP
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

"folding settings
set foldmethod=manual   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"visuals
set number
set textwidth=120
set t_Co=256

" syntax highlighting
set background=dark     " you can use `dark` or `light` as your background
" color mango

" Gist 
let g:gist_post_anonymous = 1

set tabstop=4
set shiftwidth=3

" Alias List
nmap     :b    :buffers
map <C-n> :NERDTreeToggle<CR>
map <C-l> :let @/=""

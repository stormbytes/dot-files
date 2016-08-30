set nocompatible						" be iMproved, required
filetype off							" required

" ================ Scrolling ========================
"
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set nowrap
set backspace=2 " more powerful backspacing

" disable autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Applies CPP syntax highlighting to .ino files
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

" This must be first, because it changes other options as side effect
set hidden " allow hidden buffers (with unsaved changes)
let g:NERDTreeWinPos = "right"

"folding settings
set foldmethod=manual   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"visuals
syntax on
set number
set textwidth=120
set t_Co=256


"colorscheme Tomorrow-Night
"colorscheme twilight256
"colorscheme codeschool
"colorscheme darkmate

"syntax highlighting
set background=dark     " you can use `dark` or `light` as your background
color mango

" Powerline config
" set nocompatible   " Disable vi-compatibility
" set laststatus=2   " Always show the statusline
" set encoding=utf-8 " Necessary to show Unicode glyphs

" Additional settings -- Powerline
" let g:Powerline_symbols = 'fancy'

" Arduino syntax highlighting applied to *.pde
" autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

"	Force 256 colors in Vim
let &t_Co=256

" Gist 
let g:gist_post_anonymous = 1

set tabstop=3
set shiftwidth=3

" Ledger files with .ldg extentions 
" au BufNewFile,BufRead *.ldg,*.ledger        setf ledger 

" Alias List
" ====================================

" nmap     <F2>  :NERDTreeToggle %:p:h<CR>
" nmap     :nt   :NERDTree
" imap   	,,  	<esc>
nmap     :b    :buffers


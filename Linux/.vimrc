"" General

" Show line numbers
set nu

" Turn off error beeping
set visualbell

" Break lines at word (requires Wrap lines)
" set linebreak

" Wrap-broken line prefix
" set showbreak=+++	

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Speed up scrolling in Vim
set ttyfast

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Encoding
set encoding=utf-8

" Line wrap (number of cols)
" set textwidth=100

" Highlight matching brace
set showmatch	

" Use visual bell (no beeping)
" nset visualbell	
 
" Highlight all search results
set hlsearch	

" Enable smart-case search
" set smartcase	

" Always case-insensitive
set ignorecase	

" Searches for strings incrementally
set incsearch	
 
" Auto-indent new lines
set autoindent	

" Use spaces instead of tabs
set expandtab	

" Number of auto-indent spaces
set shiftwidth=4	

" Enable smart-indent
" set smartindent	

" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
 
" Number of undo levels
set undolevels=1000	

" Backspace behaviour
set backspace=indent,eol,start	


"" hybrid line number

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" turn hybrid line numbers off
"set nonumber norelativenumber
"set nonu nornu

" toggle hybrid line numbers
"set number! relativenumber!
"set nu! rnu!


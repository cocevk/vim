execute pathogen#infect()
" Solarized theme (http://ethanschoonover.com/solarized/vim-colors-solarized)
syntax enable
set background=dark
colorscheme solarized
" map leader to ,
let mapleader = ","
" set swp file location
:set directory=~/.vimswapfiles//
set mouse=a
set wildignore=*.o,*.obj,*.bak,*.exe,*.class,*.jar
filetype plugin indent on
syntax on
set encoding=utf-8
" The following is from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
" fix Vim’s horribly broken default regex “handling” by automatically
" inserting a \v before any string you search for. This turns off Vim’s crazy
" default regex characters and makes searches use normal regexes. 
" nnoremap / /\v
" vnoremap / /\v
" deal with case-sensitive search intelligently. If you search for an
" all-lowercase string your search will be case-insensitive, but if one or
" more characters is uppercase the search will be case-sensitive. 
set ignorecase
set smartcase
" applies substitutions globally on lines. For example, instead of
" :%s/foo/bar/g you just type :%s/foo/bar/. This is almost always what you
" want (when was the last time you wanted to only replace the first occurrence
" of a word on a line?) and if you need the previous behavior you just tack on
" the g again.
set gdefault
" incsearch, showmatch and hlsearch work together to highlight search results
" (as you type). 
set incsearch
set showmatch
" set hlsearch

" The <leader><space> mapping makes it easy to clear out a search by typing
" ,<space>. This gets rid of the distracting highlighting once I’ve found what
" I’m looking for.
nnoremap <leader><space> :noh<cr>
" The last two lines make the tab key match bracket pairs. I use this to move
" around all the time and <tab> is a hell of a lot easier to type than %.
nnoremap <tab> %
vnoremap <tab> %
" The next section makes Vim handle long lines correctly:
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" use jj to exit back to normal mode. The only time I’ve ever actually tried
" to hit two j‘s in a row is just now while writing this entry, so it doesn’t
" conflict with my normal typing at all:
inoremap jj <ESC>

"Bubble single lines (kicks butt)
"http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

"Toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

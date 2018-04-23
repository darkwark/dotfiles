set expandtab
set shiftwidth=2
set tabstop=2

set modeline
set modelines=5

set nu


syntax enable
set cursorline


set nocompatible
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
"set undofile


" Searching/moving fixes
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


" Text Wrapping
set wrap!
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

" Show invisible chars
"set list
"set listchars=tab:▸\ ,eol:¬

" Treat _ as space for ciw in <bg-dark-red>
"set iskeyword-=-

" Turn on line numbers and set relative numbers
set number
set relativenumber


" Remove bars (- - -) in vertical split
:set fillchars+=vert:\ 


" Set Color Scheme
set t_Co=256
colorscheme gruvbox
let g:airline_theme='minimalist'
"let g:airline_theme='base16'


" Airline
let g:airline_powerline_fonts = 1

"Syntax for GLSL
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl


"IndentLines
let g:indentLine_char = '-'

" ---------------------------------------
" Hotkeys and <leader> stuff
" ---------------------------------------
" Set leader and jk to esc
let mapleader=","
inoremap jk <esc>

map <leader>n :NERDTreeToggle<CR>

"Tabulazie Stuff
if exists(":Tabularize")
      nmap <Leader>a= :Tabularize /=<CR>
      vmap <Leader>a= :Tabularize /=<CR>
      nmap <Leader>a: :Tabularize /:\zs<CR>
      vmap <Leader>a: :Tabularize /:\zs<CR>
    endif


" Strip all trailing whitespace in current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


" Split window keys
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle IndentGuides
:nmap <silent> <Leader>ig <Plug>:IndentLinesToggle


" Move Block of code in Visual Mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" ---------------------------------------
" Plugins (vim-plug, use :PlugInstall)
" ---------------------------------------
call plug#begin('~/.vim/plugged')

  " NERDTree
  Plug 'scrooloose/nerdtree'

  "vim-airline
  Plug 'bling/vim-airline'

  "airline themes
  Plug 'vim-airline/vim-airline-themes'



  "Syntax and Language Support
  Plug 'vim-scripts/glsl.vim'
  Plug 'digitaltoad/vim-jade'
  Plug 'plasticboy/vim-markdown'
  Plug 'pangloss/vim-javascript'
  Plug 'hail2u/vim-css3-syntax'


  "Other plugins
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'kien/ctrlp.vim'
  "Plug 'valloric/youcompleteme'
  Plug 'godlygeek/tabular'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'scrooloose/nerdcommenter'
  Plug 'easymotion/vim-easymotion'
  "Plug 'nathanaelkane/vim-indent-guides'
  "Plug 'yggdroot/indentline'
  Plug 'tpope/vim-sensible'
  
  "Snippets
  "Plug 'SirVer/ultisnips'
  "Plug 'honza/vim-snippets'
  
  "iA writer like editor
  Plug 'junegunn/goyo.vim'
  Plug 'amix/vim-zenroom2'

call plug#end()
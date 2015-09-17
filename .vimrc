set nocompatible
set laststatus=2 " Always show status line
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'ervandew/screen'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'juvenn/mustache.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'leafo/moonscript-vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'mhinz/vim-startify'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/Cpp11-Syntax-Support'
Bundle 'vim-scripts/py_jump.vim'
Bundle 'XadillaX/json-formatter.vim'
"Bundle 'Valloric/YouCompleteMe' instructions on http://valloric.github.io/YouCompleteMe/

let g:airline#extensions#whitespace#checks = [ 'indent' ]
let g:airline_powerline_fonts = 1
let g:ctrl_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:enable_numbers = 0
let g:NERDTreeShowLineNumbers = 0
let g:ScreenImpl = 'Tmux'

filetype plugin indent on
syntax on

set hlsearch
set incsearch
set sw=2
set ts=2
set expandtab
set autoindent
set encoding=utf-8
setglobal fileencoding=utf-8
set guioptions=mg
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h10
set wildmenu
set wildignore+=*.o,*.dSYM,*.a,*.lo,*.pyc
set ruler
let mapleader = ","
set history=1000
set hidden
let g:Powerline_symbols = 'fancy'
if has("gui_running")
  set fuopt+=maxhorz
  set background=light
  colorscheme solarized
else
  set mouse=a
  set background=dark
  let g:solarized_termtrans = 1
  colorscheme solarized
endif
set colorcolumn=80

let NERDTreeIgnore=['\~$', '\.pyc$']
set visualbell
set backspace=indent,eol,start
nmap <silent> <leader>n :silent :nohlsearch<CR>
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>ts ggO<ESC>!!date<CR>A<CR><ESC>28a=<ESC>o<ESC>O
nnoremap <silent> <Leader># :NumbersToggle<CR>

function! DistractionFreeWriting()
  if has("gui_running")
    set fuoptions=background:#00fdf6e3 
    set linebreak
    set fullscreen
    set lines=50 columns=80
    set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline:h12
  endif
endfunction

nnoremap <silent> <Leader>w :call DistractionFreeWriting()<CR>

" Enable per-project .vimrc files
set exrc

" Only execute safe per-project vimrc commands
set secure

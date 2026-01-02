set nocompatible
filetype off
set nowrap
set number
set numberwidth=4
set cursorline
let mapleader = ","
set hidden
set visualbell t_vb=
set background=dark
set encoding=utf-8
set t_Co=256

syntax on

set hlsearch
set ignorecase smartcase
set incsearch

imap jj <Esc>
imap kk <Esc>


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

" tpope essentials
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-rails'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" UI enhancements
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" Language support
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'derekwyatt/vim-scala'

" Code quality
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'

" Utilities
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

" Color schemes
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

call plug#end()
filetype plugin indent on

colorscheme jellybeans

" Nerdtree
:noremap <Leader>r :NERDTreeToggle<CR>
let NERDTreeHiJackNetrw = 1
let NERDTreeMouseMode=1
let NERDTreeWinSize=40

" FZF
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>g :Rg<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'

" GitGutter
let g:gitgutter_sign_column_always = 1

" ALE (Asynchronous Lint Engine)
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'ruby': ['rubocop'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black'],
\}
let g:ale_fix_on_save = 0

" Emmet
let g:user_emmet_leader_key='<C-e>'


set nocompatible               " be iMproved
set nowrap
set number
set numberwidth=4
set cursorline
let mapleader = ","
set hidden
set visualbell t_vb=

let g:gitgutter_sign_column_always = 4

set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

set incsearch
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

imap jj <Esc>
imap kk <Esc>

set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" Tabs ************************************************************************
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces

function! Tabstyle_tabs()
  " Using 4 column tabs
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set noexpandtab
  autocmd User Rails set softtabstop=4
  autocmd User Rails set shiftwidth=4
  autocmd User Rails set tabstop=4
  autocmd User Rails set noexpandtab
endfunction

function! Tabstyle_spaces()
  " Use 2 spaces
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

call Tabstyle_spaces()

set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.

set nofoldenable " Say no to code folding...

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" cd to directory of open file
map <leader>cd :cd %:p:h<CR>

" stolen from Twerth
" Omni Completion *************************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" May require ruby compiled in
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

" Thor files
autocmd BufNewFile,BufRead *.thor set filetype=ruby
autocmd BufNewFile,BufRead Thorfile set filetype=ruby

" Tab to auto-complete
" Find better function here:
" http://vim.wikia.com/wiki/Smart_mapping_for_tab_completion
" :imap <tab> <c-x><c-o>
"

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'nanotech/jellybeans.vim'

" tpope stuff
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-ragtag'

Bundle 'duskhacker/sweet-rspec-vim'

" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'derekwyatt/vim-scala'

Bundle 'Lokaltog/powerline'
" Bundle 'bling/vim-airline'
Bundle 'stephenmckinney/vim-solarized-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'aaronbieber/quicktask.git'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shutnik/jshint2.vim.git'
Bundle 'lunaru/vim-less'
Bundle 'skammer/vim-css-color'
Bundle 'digitaltoad/vim-jade'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "pangloss/vim-javascript"
Bundle "othree/javascript-libraries-syntax.vim"
Bundle "wakatime/vim-wakatime"
Bundle 'kchmck/vim-coffee-script'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'vim-scripts/dbext.vim'

" PHP stuff
Bundle 'tremby/synchk'
Bundle 'xsbeats/vim-blade'

let g:user_emmet_settings = {
      \  'indentation' : ' '
      \}

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['lessc']
let g:syntastic_less_checkers = ['lessc']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_coffeescript_checkers = ['coffeelint']
let g:syntastic_html_tidy_ignore_errors=[
      \'proprietary attribute',
      \'proprietary attribute \"ng-"',
      \'escaping malformed URI reference',
      \'lacks "alt" attribute',
      \'lacks "src" attribute',
      \'trimming empty',
      \]

let g:used_javascript_libs = 'angularjs,jquery,underscore'

autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0

set guifont=Sauce\ Code\ Powerline:h12
" set guifont=Monaco:h14

let g:airline_powerline_fonts = 1
let g:Powerline_theme='short'
let g:Powerline_colorscheme='solarized256_dark'

" preview in browser
" Bundle 'Bogdanp/browser-connect.vim.git'
" vim-scripts repos
Bundle 'L9'
" non github repos
" git repos on your local machine (ie. when working on your own plugin)
" ...

filetype plugin indent on     " required!
syntax on
autocmd BufRead,BufNewFile *.conf setf yaml

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

let g:solarized_termcolors=256
" colorscheme solarized
colorscheme molokai-jamey
" colorscheme Tomorrow-Night
" colorscheme jellybeans

let g:solarized_termcolors= 16 | 256
let g:solarized_bold=0

set background=dark
" let g:molokai_original = 1
" let g:rehash256 = 1
let g:Powerline_symbols = 'unicode'
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\


" CtrlP
let g:ctrlp_map = '<Leader>f'
let g:ctrlp_cmd = 'CtrlP'
" nnoremap <c-b> = :CtrlPBuffer<cr>
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_lazy_update = 0
let g:ctrlp_use_caching = 1000
let g:ctrlp_cache_dir = '~/.vim/tmp/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 50000
let g:ctrlp_max_height = 20
let g:ctrlp_open_multiple_files = 'tj'
" make tabs default behavior
" let g:ctrlp_prompt_mappings = {
"     \ 'AcceptSelection("e")': ['<c-b>'],
"     \ 'AcceptSelection("t")': ['<cr>', '<c-t>', '<2-LeftMouse>'],
"     \ 'AcceptSelection("h")': ['<c-s>', '<c-x>'],
"     \ }
set wildignore+=build/**
set wildignore+=htdocs/**
set wildignore+=*/build/*
set wildignore+=*/htdocs/*

" Nerdtree
:noremap <Leader>r :NERDTreeToggle<CR>
let NERDTreeHiJackNetrw = 1
let NERDTreeMouseMode=1
let NERDTreeWinSize=40

" sweet-rspec-vim settings
map <D-r> :SweetVimRspecRunFile<CR>
map <D-R> :SweetVimRspecRunFocused<CR>

" vim-ragtag
let g:ragtag_global_maps = 1

" Movement
map <leader>y "*y
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-o> <c-w>o

" Can't be bothered to understand ESC vs <c-c> in insert mode
imap <c-c> <ESC>
" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
nnoremap <leader><leader> <c-^>


function! Repeat()
  let times = input("Count: ")
  let char  = input("Char: ")
  exe ":normal a" . repeat(char, times)
endfunction

imap <C-u> <C-o>:call Repeat()<cr>


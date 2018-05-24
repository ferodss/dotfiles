source ~/.vim/bundles.vim

set t_Co=256

" Use Vim defaults
set nocompatible

" Encoding
set encoding=utf-8

" Enable mouse usage (all modes)
set mouse=a 

" Enable syntax highlighting and file type detection
syntax enable
filetype plugin indent on

" display the mode
set showmode

" enable backspace over auto-indention and line breaks
set backspace=indent,eol,start

" enable abandoned buffers to be hidden vs unloaded
set hidden

" enable command line completion
set wildmenu
set wildmode=list:longest

" enable search highlighting and smartcase matching
set incsearch
set hlsearch
set ignorecase
set smartcase

" enable line numbers
set number

" configure status line
set laststatus=2
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

" enable line wrapping breaking at word boundaries
set wrap
set linebreak

" enable 5 lines of context around the cursor
set scrolloff=5

" disable backups and swap files
set nobackup
set noswapfile

" set default indentation of 4 character-wide tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set title
set autoread
set visualbell


" set default color scheme
set background=dark
colorscheme molokai
let g:molokai_original = 1

" NERDTree
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <Ctrl + n> to toogle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Display hidden files on NERDTree
let g:NERDTreeShowHidden=1

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" show git ignored status
"let g:NERDTreeShowIgnoredStatus = 1


" PHP Support
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" highlight SQL syntax in strings
let php_sql_query = 1

" highlight HTML in string
let php_htmlInStrings = 1 

" disable short tags
let php_noShortTags = 1

" disable folding for classes and functions
let php_folding = 0

" PHP Doc
"inoremap <buffer> <C-P> <Esc>:call PhpDocSingle()<CR>i
"nnoremap <buffer> <C-P> :call PhpDocSingle()<CR>
"vnoremap <buffer> <C-P> :call PhpDocRange()<CR>
"let g:pdv_cfg_Uses = 1
nmap <silent><C-\> :call PhpDocSingle()<CR>


" GitGutter
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tell vim-gitgutter to use raw grep
let g:gitgutter_escape_grep = 1

" Turn on line highlighting by default
let g:gitgutter_highlight_lines = 1



" Ctrlp.vim
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <Ctrl + p> to open CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.zip

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'stephpy/vim-phpdoc'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-vdebug/vdebug'
Plugin 'airblade/vim-gitgutter'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

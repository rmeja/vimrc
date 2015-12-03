set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" List Plugins
Plugin 'goatslacker/mango.vim' " Theme Mango
Plugin 'bling/vim-airline' " tatus/tabline for vim
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'scrooloose/nerdtree' " project file manager
Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'airblade/vim-gitgutter' " vim plugin which shows a git diff in the gutter and stages/reverts hunks
Plugin 'scrooloose/nerdcommenter' " vim plugin for intensely orgasmic commenting
Plugin 'bronson/vim-trailing-whitespace' " Highlights trailing whitespace in red and provides :FixWhitespace to fix it
Plugin 'scrooloose/syntastic' " Syntax checking hacks for vim
Plugin 'elzr/vim-json' " a better JSON for Vim
Plugin 'othree/yajs.vim' " Yet Another JavaScript Syntax for Vim
Plugin 'othree/javascript-libraries-syntax.vim' " Syntax for JavaScript libraries
Plugin 'kchmck/vim-coffee-script' " CoffeeScript support for vim
Plugin 'othree/html5.vim' " HTML5 omnicomplete and syntax
Plugin 'digitaltoad/vim-jade' " Vim syntax highlighting for Jade templates
Plugin 'cakebaker/scss-syntax.vim' " Vim syntax file for scss
Plugin 'hail2u/vim-css3-syntax' " CSS3 syntax support
Plugin 'Valloric/YouCompleteMe' " A code-completion engine for Vim
Plugin 'ekalinin/Dockerfile.vim' " Vim syntax file & snippets for Docker's Dockerfile
Plugin 'Yggdroot/indentLine' " A vim plugin to display the indention levels with thin vertical lines

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Add lines number
set number

" Set term color at 256
set t_Co=256

" Colorscheme
set background=dark
syntax on
colorscheme mango

" Configuration Airline plugin
let g:airline#extensions#tabline#enabled=1
let airline_powerline_fonts=1
set laststatus=2

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Configuration syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Coding style
set ts=2 sw=2 et

" Configuration indentline
let g:indentLine_char = '|'

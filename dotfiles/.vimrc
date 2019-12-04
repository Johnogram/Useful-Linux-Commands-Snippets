" Disable Vi compatibility to enable more powerful vim features
set nocompatible

""""""""""""""
"  VIM-PLUG  "
""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialise vim-plug to install plugins to ~/.vim/plugged
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'

" Files & Buffers
"-----------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Coding
" -------
Plug 'majutsushi/tagbar'

" UI / Styling
"--------------
Plug 'itchyny/lightline.vim'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'

" End vim-plug
call plug#end()

""""""""""""
"  CONFIG  "
""""""""""""

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set encoding=utf8
set nowrap

" Indentation
"-------------

" Tabs = 4 spaces
set tabstop=4
" Delete 4 spaces with backspace
set softtabstop=4
" Use 4 spaces for (auto)indentation
set shiftwidth=4
" Convert tabs to spaces
set expandtab
" Automatically indent new lines to match the one above
set autoindent
" Make backspace work properly (e.g. traverse line breaks)
set backspace=indent,eol,start

" UI / styling
"--------------

" Enable true colour
" https://github.com/tmux/tmux/issues/1246
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Use molokai colorscheme
if (!empty(glob("~/.vim/plugged/molokai")))
    let g:molokai_original=1
    colorscheme molokai
endif 

" Automatically change the screen title
set title
" Show line numbers
set number
" Show the current cursor position in the status line
set ruler
" Always show the status line
set laststatus=2
" Keep the cursor vertically centered, where possible
set scrolloff=999
" Highlight the line the cursor is currently on
set cursorline
" Draw a vertical line at 120 characters
highlight ColorColumn ctermbg=DarkGrey
set colorcolumn=120

" Devicons configuration
" ----------------------
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Other
"--------------
set spell spelllang=en_gb

""""""""""""""
"  BINDINGS  "
""""""""""""""
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

map <C-n> :NERDTreeToggle<cr>
map <C-m> :TagbarToggle<CR>
"map <C-p> :FZF<cr>

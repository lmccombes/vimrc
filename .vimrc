set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-classpath'
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-surround'
Plugin 'mattn/flappyvird-vim'

Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
" Plugin 'guns/vim-sexp'
Plugin 'rust-lang/rust.vim'

Plugin 'tpope/vim-vinegar.git'
Plugin 'vim-scripts/paredit.vim'

"
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>


" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'kien/ctrlp.vim'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Bundle 'klen/python-mode'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'tpope/vim-fireplace'

Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> ^V^R^V^O*
nnoremap ^V^H ^V^W^V^H
nnoremap <NL> ^V^W<NL>
nnoremap ^V^K ^V^W^V^K
nnoremap ^V^L ^V^W^V^L
vmap ^V^X "*d
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("^V<cWORD>"),0)^V
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=2
set diffexpr=MyDiff()
set guifont=Consolas:h9:cANSI
set helplang=en
set ignorecase
set incsearch
set smartcase
" vim: set ft=vim :
set shiftwidth=4
set tabstop=4
imap jj <ESC>
imap jk <ESC>
syntax on
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set background=dark
colorscheme monokai
let mapleader = "\<Space>"
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
noremap <Leader>s :update<CR>
noremap <Leader>c "+

noremap <Leader>R :RainbowParenthesesToggle


augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END


" Always display powerline
set laststatus=2

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

:autocmd VimEnter *       RainbowParenthesesToggle
:autocmd Syntax   clojure RainbowParenthesesLoadRound
:autocmd Syntax   clojure RainbowParenthesesLoadSquare
:autocmd Syntax   clojure RainbowParenthesesLoadBraces

set nu

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

imap <Tab> <C-P>


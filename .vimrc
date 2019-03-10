set nocompatible              " required
filetype off                  " required
syntax on
colorscheme nova
let g:airline_theme='onedark'
set background=dark
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/es.next.syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'othree/yajs.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
"Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'trevordmiller/nova-vim'
"Plugin 'Valloric/YouCompleteMe'
" download font from https://github.com/ryanoasis/nerd-fonts#patched-fonts
Plugin 'ryanoasis/vim-devicons'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set splitbelow
set splitright
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
set encoding=UTF-8
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set nu
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
"au BufNewFile,BufRead *.py set
"   \ tabstop=4
"    \ softtabstop=4
"    \ shiftwidth=4
"    \ textwidth=79
"    \ expandtab
"    \ autoindent
"    \ fileformat=unix
"au BufNewFile,BufRead *.html, *.css set
"    \ tabstop=2
"    \ softtabstop=2
"    \ shiftwidth=2
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
map <C-n> :NERDTreeToggle<CR>
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"
" " Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
" jsx
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:gitgutter_max_signs = 500
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
let g:gitgutter_override_sign_column_highlight = 0

if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

highlight GitGutterAdd    guifg=#009900 guibg=#073642 ctermfg=2 ctermbg=0
highlight GitGutterChange guifg=#bbbb00 guibg=#073642 ctermfg=3 ctermbg=0
highlight GitGutterDelete guifg=#ff2222 guibg=#073642 ctermfg=1 ctermbg=0

highlight link GitGutterChangeLine DiffText

" Eslint 
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:polyglot_disabled = ['graphql']

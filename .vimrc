set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"  let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" Github removed the original Vundle plugin without any explanation
" Here we use a fork
Plugin 'Stratus3D/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Slime
Plugin 'jpalardy/vim-slime'

" Manage Folds
Plugin 'tmhedberg/SimpylFold'

" Jedi AutoCompletion
Plugin 'davidhalter/jedi-vim'

" Codex
Plugin 'Shathur/vim_codex'

" SuperTab
Plugin 'ervandew/supertab'

" JupyterAscending
Plugin 'untitled-ai/jupyter_ascending.vim'

" PearTree
Plugin 'tmsvg/pear-tree'

" Theme the Mode line
Plugin 'itchyny/lightline.vim'

" NerdTree
Plugin 'preservim/nerdtree'

" Check Syntax
Plugin 'dense-analysis/ale'

" Farout Theme
Plugin 'fcpg/vim-farout'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required

" colorscheme elflord " default is ron :colorscheme Ctrl+d for all the options
colorscheme farout

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" specify splits location
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" some extra navigations
nmap oo o<Esc>k
nmap OO O<Esc>j
" Paste the initial yank over and over again
" map pp "0p /this line leads to some strange behaviour 
nmap pp diw"0P

" Python Identation
" au BufNewFile, BufRead *.py
"  set tabstop=4
"  set softtabstop=4
"  set shiftwidth=4
"  set textwidth=79
"  set expandtab
"  set autoindent
"  set fileformat=unix

" Generic Identation
au BufNewFile, BufRead *.js,*.html,*.css
	set tabstop=2
	set softtabstop=2
	set shiftwidth=2

" Stop indenting when pasting with the mouse
set pastetoggle=<f5><F5>

" Flag Unnecessary Whitespace
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

" Set UTF-8 Support
set encoding=utf-8

" RelativeLines
set relativenumber
" Try to also show proper line numbers
set number

" Jedi Setup
let g:jedi#use_tabs_not_buffers = 1 " use tabs
let g:jedi#popup_select_first = 0   " save one click
let g:jedi#completions_command = "<C-Space>"
let g:jedi#show_call_signatures = "1" " show function input info above line

" SuperTab with Jedi
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" LightLine Setup
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" ALE Setup
" let g:ale_linters={'python3': ['pylint']}
" 
" let g:ale_python_executable='python3'
" let g:ale_python_pylint_use_global=1

" syntax on

" NERDTree toggle
nnoremap <C-e> :NERDTreeToggle<CR>

" try slime functionality with iPython
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
filetype plugin on

" Jupyter_ascending remappings
nmap <space><space>n <Plug>JupyterExecute
nmap <space><space>b o<Esc>o#<space>%%<Esc>o

" Control transparency
set background=light
hi Normal guibg=NONE ctermbg=NONE

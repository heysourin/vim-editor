" Enable syntax highlighting
syntax on

" Enable file type detection
filetype plugin indent on

" Set indentation for Python
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"Autocompletes
set complete+=kspell
set completeopt=menuone,longest

" Enable line numbers
set number

" Highlight matching parentheses
set showmatch

" Enable mouse support
set mouse=a

" Set the clipboard to use the system clipboard
set clipboard=unnamedplus

" Enable incremental search
set incsearch

" Enable line wrapping
set wrap

" Highlight current line
"set cursorline

" Initialize plugin system
call plug#begin('~/.vim/plugged')

" Python syntax highlighting and indenting
Plug 'Vimjas/vim-python-pep8-indent'

" Auto-completion
"Plug 'davidhalter/jedi-vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/AutoComplPop'


" Linting and static analysis
Plug 'dense-analysis/ale'

" Git integration
Plug 'tpope/vim-fugitive'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File explorer
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Jedi-vim configuration
let g:jedi#completions_enabled = 1
let g:jedi#use_tabs_not_buffers = 1

" ALE configuration
let g:ale_linters = {
    \ 'python': ['flake8', 'mypy', 'pylint'],
    \}
let g:ale_fixers = {
    \ 'python': ['autopep8', 'yapf'],
    \}
let g:ale_fix_on_save = 1

" NERDTree configuration
map <C-n> :NERDTreeToggle<CR>

" Move current line up
nnoremap <A-Up> :m .-2<CR>==

" Move current line down
nnoremap <A-Down> :m .+1<CR>==

" Move selected lines up in visual mode
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Move selected lines down in visual mode
vnoremap <A-Down> :m '>+1<CR>gv=gv

" *****SHIFTING LEFT AND RIGHT*****

" *******PREVENTING CASE SENSITIVE SEARCH*******
set ignorecase
set smartcase

"*************THEME***********
colorscheme peachpuff

" Customize the popup menu colors
hi Pmenu guibg=#333333 guifg=#ffffff
hi PmenuSel guibg=#0066ff guifg=#ffffff

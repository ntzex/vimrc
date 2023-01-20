set relativenumber
set updatetime=500
set mouse=

call plug#begin()
Plug 'dense-analysis/ale'
Plug '907th/vim-auto-save'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'fcpg/vim-fahrenheit'
Plug 'cdelledonne/vim-cmake'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:promptline_theme = 'airline'

let b:ale_fixers = {'ruby': ['rubocop'], 'python': ['flake8'], 'c++': ['clangd']}

let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "CursorHoldI"]
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3

colorscheme fahrenheit

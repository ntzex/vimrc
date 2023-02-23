filetype plugin on

set noruler
set noshowmode
set termguicolors
set relativenumber
set number
set updatetime=800
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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'shaunsingh/solarized.nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:airline_theme = 'onehalfdark'
let g:promptline_theme = 'airline'

let b:ale_fixers = {'ruby': ['rubocop'], 'python': ['flake8'], 'c++': ['clangd']}

let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "CursorHoldI"]
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

colorscheme onehalfdark

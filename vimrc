"=== VIM SETTINGS ===================================="

" Mainly for C developers

call plug#begin()
Plug 'mhartington/oceanic-next'
Plug 'bluz71/vim-mistfly-statusline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Basic config
syntax enable
filetype plugin indent on
set hlsearch incsearch ignorecase
set number relativenumber
set encoding=UTF-8
set mouse=a
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" Status line
set noshowmode laststatus=2

" Colorscheme
colorscheme OceanicNext

" Autocompletion
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha

" Remapping
nmap <C-x> :NERDTreeToggle<CR>

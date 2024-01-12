"=== VIM SETTINGS ===================================="

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'vimsence/vimsence'
Plug 'sainnhe/gruvbox-material'
call plug#end()

" Basic default config
syntax enable
filetype plugin indent on
set encoding=UTF-8
set hlsearch incsearch ignorecase
set number relativenumber
set mouse=a
set showmatch
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set background=dark 
set nocompatible
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

if has('termguicolors')
	set termguicolors
endif

" Font
set guifont=Fira\ Code\ Medium:h10
let g:NERDTreeShowDevIcons = 1

" C/C++ syntax highlighting
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1

" Statusline
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'gruvbox_material',
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }
" Colorscheme
colorscheme gruvbox-material

" Autocompletion
inoremap { {}<Esc>ha
inoremap [ []<Esc>ha
inoremap ( ()<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha

" Remapping
nmap <C-x> :NERDTreeToggle<CR>
map <C-Down> :m +1<CR>
map <C-Up> :m -2<CR>

" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" NERDTree
let g:NERDTreeChDirMode = 2

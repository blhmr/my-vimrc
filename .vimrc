"=== HATIM'S PERSONAL VIM CONFIG ===================================="

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'itchyny/lightline.vim'
Plug 'vimsence/vimsence'
Plug 'ervandew/supertab'
Plug 'sainnhe/gruvbox-material'
Plug 'mhinz/vim-startify'
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
set termguicolors

" C/C++ syntax highlighting
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1

" NERDTree + Dev Icons
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


" Statusline
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'gruvbox_material',
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }

" Colorscheme
let g:gruvbox_material_enable_italic = 1
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

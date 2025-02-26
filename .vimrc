" ----- Hatim's minimal vim config -----

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'bfrg/vim-c-cpp-modern'
Plug 'kh3phr3n/python-syntax'
call plug#end()

" Basic default config
syntax enable
set hlsearch incsearch ignorecase
set number relativenumber
set showmatch
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set cursorline
set termguicolors

" Statusline
set laststatus=2
let g:lightline = {'colorscheme':'jellybeans','separator':{'left':'','right':''},'subseparator':{'left':'','right':''}}

" Colorscheme
set bg=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

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

" Syntax highlighting
let python_highlight_all = 1


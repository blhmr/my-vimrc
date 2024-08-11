" ----- Hatim's minimal vim config -----

call plug#begin()
Plug 'nanotech/jellybeans.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
call plug#end()

" Basic default config
syntax enable
set hlsearch incsearch ignorecase
set number relativenumber
set showmatch
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set termguicolors

" Statusline
set laststatus=2
let g:lightline = {'colorscheme':'jellybeans','separator':{'left':'','right':''},'subseparator':{'left':'','right':''}}

" Colorscheme
colorscheme jellybeans

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


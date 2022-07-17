set spell spelllang=en_us
set showmatch		
" set relativenumber
" set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set wrap	
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=20
set noshowmode
set completeopt=menuone,noinsert,noselect
" set colorcolumn=80	
" set signcolumn=yes
set cmdheight=2
set updatetime=50
set cursorline
set autoindent
set autoread

hi CursorLine term=bold  cterm=bold guibg=Grey40

autocmd FileType yaml setlocal ai ts=2 sw=2 et nu cuc

"Disable arrow keys:
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Enables Vim to identify specific file types and load the filetype-specific indent files
if has('filetype')
  filetype indent plugin on
endif

"Enable syntax highlighting
if has('syntax')
  syntax on
endif


" Get out of Insert mode by typing "jj"
inoremap jj <ESC>


" VIM VIM-BE-GOOD:
" docker run -it --rm brandoncc/vim-be-good:latest
"
" VIM FUGITIVE:
" :G status
" :G add .
" :G commit		=> wq!
" :G log
" :G restore --staged
" :G mergetool
"
"
call plug#begin('~/.vim/plugged')
Plug 'psliwka/vim-smoothie'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'hashivim/vim-vagrant'
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox

" Set the leader key
let mapleader = " "
" Set mapping to save the file with using leader key
noremap <leader>w :w<cr>
nmap <leader>gs :G<CR>
nmap <leader>of :set relativenumber! nu!<CR>
nmap <leader>on :set relativenumber nu<CR>

" fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>


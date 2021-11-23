" PLUGINS DE VIM
call plug#begin('~/.local/share/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" CONFIGURACIÓN GENERAL

" Sintaxis
syntax on

" Esquema de colores
colorscheme nord

" Mostrar número de línea
set relativenumber

" Muestra la pareja de [] {} y ()
set showmatch

" Encoding
set encoding=UTF-8

" Colores de la terminal
set termguicolors

" Identación
filetype indent on
filetype plugin indent on


" CONFIGURACIÓN DE PLUGINS

" FZF
map <C-F> :FZF<CR>

" Lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ }
      \ }

" Lua Colorizer
lua require'plug-colorizer'

" ATAJOS DE TECLADO

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Bracey
"map <C-B> :Bracey<CR>
"map <C-C> :BraceyStop<CR>

" Abrir una pestña
map <C-A> :tabnew<CR>

" Abrir Startify
map <C-S> :Startify<CR>

" Cambiar a la siguiente pestaña
map <C-Z> :tabn<CR>

" Quitar pestaña
map <C-X> :q<CR>

"split navigations
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>

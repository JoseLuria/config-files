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
Plug 'andrewradev/tagalong.vim'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'chrisbra/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mortonfox/nerdtree-term'
Plug 'tribela/vim-transparent'
Plug 'rcarriga/nvim-notify'

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

" Copiar al portapapeles
set clipboard=unnamedplus

" Identación
filetype indent on

filetype plugin indent on

" Eliminar numeros al seleccionar texto
set mouse=a

" CONFIGURACIÓN DE PLUGINS

" Autoclose Tags VIM
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" FZF
map <C-F> :Files<CR>

" FZF Color Scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Comment'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

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

" Terminal Below
set splitbelow

" ATAJOS DE TECLADO

" LazyGit
map <C-E> :LazyGit<CR>

" NERDTree
nnoremap <C-T> :NERDTreeToggle<CR>

" Abrir configuracion
map <C-M> :edit /home/jose/.config/nvim/init.vim<CR> 

" Abrir una pestña
map <C-A> :tabnew<CR>

" Abrir Startify
map <C-S> :Startify<CR>

" Cambiar a la pestaña anterior
map <C-B> :tabprevious<CR>

" Cambiar a la siguiente pestaña
map <C-Z> :tabn<CR>

" Quitar pestaña
map <C-X> :q<CR>

"split navigations
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>

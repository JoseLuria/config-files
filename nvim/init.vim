" PLUGINS DE VIM
"
call plug#begin('~/.vim/plugged')

" Barra de navegacion
Plug 'itchyny/lightline.vim'

" Esquema de colores (Dracula)
Plug 'dracula/vim', { 'as': 'dracula' }

" Pantalla de inicio de VIM
Plug 'mhinz/vim-startify'

" Explorador de Archivos
Plug 'preservim/nerdtree'

" Multiples cursores como en VSCode
Plug 'terryma/vim-multiple-cursors'
 
" Plugin de resaltado de color  en VIM
Plug 'norcalli/nvim-colorizer.lua'
 
" Pantalla con detalles del repositorio actual de Github
Plug 'kdheepak/lazygit.nvim'

" Añadir Commentarios
Plug 'chrisbra/vim-commentary'

" Terminal de comandos para VIM
Plug 'nikvdp/neomux'

" Ver lo cambios realizados por otros colaboradores en Github
Plug 'APZelos/blamer.nvim'

" Parentesis de colores en VIM
Plug 'junegunn/rainbow_parentheses.vim'

" Iconos en VIM
Plug 'ryanoasis/vim-devicons'

" Transparencia de la ventana
Plug 'tribela/vim-transparent'

call plug#end()

" CONFIGURACIÓN GENERAL
"
" Sintaxis
syntax on

" Esquema de colores
colorscheme dracula

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

" Copiar texto sin numeros
set mouse=a


" CONFIGURACIÓN DE PLUGINS
"
" Lua Colorizer (resaltar colores)
lua require'plug-colorizer'

" Terminal
let g:neomux_default_shell = "powershell"

" Lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ }

" ATAJOS DE TECLADO
"
" Blamer Git
let g:blamer_enabled = 1

" LazyGit
nnoremap <C-E> :LazyGit<CR>

" NERDTree
map <C-T> :NERDTreeToggle<CR>

" Abrir una pestña
map <C-A> :tabnew<CR>

" Abrir Startify
map <C-S> :Startify<CR>

" Cambiar a la siguiente pestaña
map <C-Z> :tabn<CR>

" Cambiar a la pestaña anterior
map <C-B> :tabprevious<CR>

" Quitar pestaña
map <C-X> :q<CR>

" Abrir el achivo de configuracion de VIM
map <C-M> :edit /home/jose/.config/nvim/init.vim<CR>

" Añadir una nueva terminal en una tab
map <C-D> :Neomux<CR> 

"split navigations
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>

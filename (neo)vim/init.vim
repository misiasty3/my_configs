# Basic config
syntax on
set number
set cursorline
set tabstop=4
set shiftwidth=4
set history=1000
set clipboard=unnamed
set linebreak
set ignorecase
nnoremap <CR> :noh<CR><CR>

# GUI config
set guifont=Consolas:h14

# Plugins download
call plug#begin()
    # Color schemes
    Plug 'sainnhe/gruvbox-material'
	Plug 'morhetz/gruvbox'

	# Other plugins
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
call plug#end()

# Colorscheme
colorscheme gruvbox

# NERDTree config
## Show NERDTree on start
autocmd VimEnter * NERDTree | wincmd p
## Close NERDTree split when it's the last split
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

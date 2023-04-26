set number
set mouse=a
set autoindent
set autoindent expandtab tabstop=2 shiftwidth=2

" Plugins

call plug#begin()
Plug 'ncm2/ncm2'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Autocompletion
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'

" Theme colors
Plug 'artanikin/vim-synthwave84'

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>

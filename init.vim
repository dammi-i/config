syntax on 
set autochdir
    \ completeopt-=preview
    \ clipboard+=unnamedplus
    \ guicursor=
    \ expandtab
    \ fcs=eob:\ 
    \ hidden
    \ lazyredraw
    \ mouse=a
    \ nofoldenable
    \ nowrap
    \ number
    \ undofile
    \ undodir=~/.config/nvim/undodir
    \ softtabstop=4
    \ shiftwidth=4
    \ t_Co=256
    \ tabstop=4
    \ nohlsearch
    \ termguicolors

"set guicursor=
 " \ relativenumber
"set nohlsearch
"set hidden
"set noerrorbells
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set guicursor=i:ver25-iCursor
"set expandtab
"set smartindent
"set nu
"set nowrap
"set smartcase
"set noswapfile
"set nobackup
"set undodir=~/.vim/undodir
"set undofile
"set incsearch
"set scrolloff=8
"set noshowmode
"set completeopt=menuone,noinsert,noselect
"set guifont=Monospace:h5 
"
"" delays and poor user experience.
highlight ColorColumn ctermbg=0 guibg=lightgrey 


if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'ianks/vim-tsx'
Plug 'sheerun/vim-polyglot'
Plug 'rhysd/vim-clang-format'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'joshdick/onedark.vim'
Plug 'yuezk/vim-js'
Plug 'ghifarit53/tokyonight-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tweekmonster/gofmt.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn instal'  }
Plug 'sainnhe/gruvbox-material'
Plug 'flazz/vim-colorschemes'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end() 

colorscheme onedark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 0
let g:clang_format#code_style = "llvm"
let g:airline_theme='onedark'
let g:shades_of_purple_airline = 1
"let g:airline_theme='shades_of_purple'
let g:onedark_termcolors=256
let g:clang_format#auto_format = 1
"colorscheme tokyonight
set background=dark

set number
set expandtab smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
filetype on
"set termguicolors
set cursorline
set nowrap
set hidden
set incsearch
set smartcase
set backspace=indent,eol,start
set hlsearch
set incsearch
filetype on
filetype indent on
set updatetime=100
set nobackup
set nowritebackup

call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'endel/vim-github-colorscheme'
Plug 'leafgarland/typescript-vim'

Plug 'AlessandroYorba/Alduin'
Plug 'cseelus/vim-colors-lucid'
Plug 'jacoborus/tender.vim'
Plug 'morhetz/gruvbox'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'pangloss/vim-javascript'
Plug 'chr4/nginx.vim'
Plug 'ruanyl/vim-gh-line'

Plug 'rainglow/vim'

call plug#end()

"colorscheme sonokai
"set bg=dark
colorscheme gruvbox
"colorscheme challenger_deep
"colorscheme lucid

let g:coc_disable_startup_warning = 1
let g:node_client_debug = 0

nnoremap <C-n> :cnext<CR>
nnoremap <esc> :noh<CR>

nmap <silent> <A-Up>    :wincmd k<CR>
nmap <silent> <A-Down>  :wincmd j<CR>
nmap <silent> <A-Left>  :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nnoremap <silent> = :vert resize +10<CR>
nnoremap <silent> - :vert resize -10<CR>

nnoremap <silent> <C-/> :call CocActionAsync('jumpReferences')<CR>
nnoremap <silent> <C-a> :CocAction<CR>

nnoremap <silent> <tab>   :bnext<CR>
nnoremap <silent> <S-tab> :bprevious<CR>

nnoremap <C-\> :pop<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> gl <Plug>(gh-line)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

set nobackup
set nowritebackup

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <silent>ga  <Plug>(coc-codeaction-selected)
nmap <silent>ga  <Plug>(coc-codeaction-selected)

let g:rg_derive_root="true"

nmap <silent> gh :wqa <CR>

set termguicolors
set background=dark
let g:lightline = { 'colorscheme': 'challenger_deep'}

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType scala setlocal ts=2 sts=2 sw=2
autocmd FileType yml setlocal ts=2 sts=2 sw=2
set backupdir=~/.config/nvim/backup

nnoremap gob  :s/\((\zs\\|,\ *\zs\\|)\)/\r&/g<CR><Bar>:'[,']normal ==<CR>
set guifont=Fira\ Code:h12
nnoremap <silent> <c-p> :GFiles<CR>

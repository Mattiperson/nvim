call plug#begin()

" Functionality
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'

" Aesthetics
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

call plug#end()

" Leader stuff
let mapleader=" "
nnoremap <Space> <Nop>
set showcmd

" Gruvbox stuff
colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" Goyo and Limelight
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)
map <LEADER>g :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" ALE
nnoremap <leader>a :ALEToggle<CR>

" Orchard
" Nerdtree
map <LEADER>n :NERDTreeToggle<CR>
" Undotree
map <LEADER>u :UndotreeToggle<CR>

" Generic bindings
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Misc, keep at bottom
set noshowmode
se nu
set incsearch

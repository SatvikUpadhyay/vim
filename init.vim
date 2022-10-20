:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
map <Space> <Leader>

set splitbelow splitright

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'

Plug 'yuezk/vim-js' "Syntax highlighting for JS

Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'chun-yang/auto-pairs'

"Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'vimwiki/vimwiki'

" Commenting stuff out
Plug 'tpope/vim-commentary'

set encoding=UTF-8

call plug#end()

colorscheme tokyonight
highlight clear SignColumn
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Ensures visual mode isn't lost while indenting
vmap < <gv
vmap > >gv

" Remap split : Control + hjkl for opening splits
nnoremap <C-Left> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-Right> <C-w>l

" Binding split adjustments
nnoremap <silent> <A-Left> :vertical resize -3 <CR>
nnoremap <silent> <A-Right> :vertical resize +3 <CR>
nnoremap <silent> <A-Up> :resize +3 <CR>
nnoremap <silent> <A-Down> :resize -3 <CR>

" Changes the kind of separator between splits
:set fillchars+=vert:\ 
highlight VertSplit guifg=#a1a1a1

nnoremap <Leader>x :NERDTreeFocus<CR>
nnoremap <C-z> :NERDTreeToggle<CR>
nnoremap <C-s> :NERDTree<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Buffer<CR>
nnoremap <Leader>s :let @/=""<CR>
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Vim Wiki plugin
set nocompatible
filetype plugin on
syntax on

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.ejs'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'




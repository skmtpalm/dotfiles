set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'edkolev/tmuxline.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

" Submode
Plugin 'kana/vim-submode'

Plugin 'Townk/vim-autoclose'

" deoplete
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'

" neosnippets
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'

" deoplete for ruby
Plugin 'fishbullet/deoplete-ruby'

" deoplete for javascript
Plugin 'carlitux/deoplete-ternjs', { 'do': 'npm install' }

" vim jsx pretty
Plugin 'othree/yajs.vim'
Plugin 'maxmellon/vim-jsx-pretty'
" optional
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/es.next.syntax.vim'

" for typescript
Plugin 'leafgarland/typescript-vim'

" for Docker
Plugin 'ekalinin/Dockerfile.vim'

" For json
Plugin 'elzr/vim-json'

" For Golang
Plugin 'fatih/vim-go'

" color theme
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'

"slim
Plugin 'slim-template/vim-slim.git'

call vundle#end()

filetype plugin indent on

colorscheme hybrid
set background=dark
syntax on

set noswapfile

" vi mode off
set encoding=utf8
set nowrap
set nocompatible
set laststatus=2
set hidden
set number
set ambiwidth=double
set tabstop=2
set expandtab
set shiftwidth=2
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set virtualedit=block
"set cursorline
set smartindent

" vim json double quatation show
set conceallevel=0
let g:vim_json_syntax_conceal = 0

nnoremap <silent><C-e> :NERDTreeToggle<CR>

nmap ; :Buffers
nmap t :Files

inoremap <silent> jj <ESC>

inoremap <C-a> <Esc>^i
noremap <C-a> <Esc>^

" kaigyo
nmap <CR> i<CR><ESC>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set clipboard=unnamed,autoselect

" deoplete settings
let g:deoplete#enable_at_startup = 1

" neosnippets
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" split settings
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
" nnoremap st :<C-u>tabnew<CR>
" nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
" nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
" nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" no matchparen
" no match
" :NoMatchParen
" match
" :DoMatchParen
let loaded_matchparen = 1

" deoplete- for js setting
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0' " This do disable full signature type on autocomplete

" Add extra filetypes
let g:tern#filetypes = [
                  \ 'jsx',
                  \ 'javascript.jsx',
                  \ 'vue'
                  \ ]

" Golang
" settings tab for golang

autocmd FileType go setlocal noexpandtab
autocmd FileType go setlocal tabstop=4
autocmd FileType go setlocal shiftwidth=4

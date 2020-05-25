call plug#begin('~/.vim/pluged')

Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] }   
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf.vim'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'Valloric/YouCompleteMe'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

function! PlugLoaded(name)
    return (
        \ has_key(g:plugs, a:name) &&
        \ isdirectory(g:plugs[a:name].dir) &&
        \ stridx(&rtp, g:plugs[a:name].dir) >= 0)
endfunction

if PlugLoaded('Valloric/YouCompleteMe')
    " Start autocompletion after 4 chars
    let g:ycm_min_num_of_chars_for_completion = 4
    let g:ycm_min_num_identifier_candidate_chars = 4
    let g:ycm_enable_diagnostic_highlighting = 0
    " Don't show YCM's preview window [ I find it really annoying ]
    set completeopt-=preview
    let g:ycm_add_preview_to_completeopt = 0
endif

call plug#end()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set encoding=utf-8
set number
syntax on 
colorscheme darkblue

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


set number
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set visualbell
set noerrorbells

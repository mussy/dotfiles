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
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'othree/yajs.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'

Plug 'mbbill/undotree'
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'

" VIM COLOR SCHEMES "
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

function! PlugLoaded(name)
    return (
        \ has_key(g:plugs, a:name) &&
        \ isdirectory(g:plugs[a:name].dir) &&
        \ stridx(&rtp, g:plugs[a:name].dir) >= 0)
endfunction

if PlugLoaded('Valloric/YouCompleteMe')
    let g:ycm_min_num_of_chars_for_completion = 4
    let g:ycm_min_num_identifier_candidate_chars = 4
    let g:ycm_enable_diagnostic_highlighting = 0
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
set relativenumber
set number
set showmatch
set history=1000
set smartcase
set undolevels=1000
set nobackup
set noswapfile
set visualbell
set noerrorbells
set undodir=~/.vim/undodir
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgray

set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_use_caching = 0 
let g:ctrlp_max_files=0
let g:ctrlp_user_command =  
  \ ['.git', 'cd %s && git ls-files -co --exclude-standard'] 

" NerdTree "
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:netrw_winzie = 25
let g:netrw_banner = 0
map <leader>r :NERDTreeFind<cr>

let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_jsdoc = 1
let g:prettier#autoformat_require_pragma = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Linting and ALE configs "
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fixers = {
            \  'javascript': ['eslint'],
            \}
let g:ale_fix_on_save = 1

" Remapping "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>


syntax on 
colorscheme gruvbox
set background=dark

" this is for avoiding "tmux" and "vim" conflict "
set t_Co=256

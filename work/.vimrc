set nocompatible " be iMproved, required
filetype off	 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required Plugin 'VundleVim/Vundle.vim' 
" NERDTree
Plugin 'scrooloose/nerdtree'

" Ctrl-P (fuzzy finder)
Plugin 'kien/ctrlp.vim'

" tComment (commenting out code)
Plugin 'tomtom/tcomment_vim'

" Syntastic (syntax checker)
Plugin 'scrooloose/syntastic'

" neocomplete (autocompletion)
Plugin 'shougo/neocomplete.vim'

" fugitive.vim (git-wrapper)
Plugin 'tpope/vim-fugitive'

" goyo.vim: distraction-free mode.
Plugin 'junegunn/goyo.vim'

" airline (statusbar)
Plugin 'bling/vim-airline'

" airline themes
Plugin 'vim-airline/vim-airline-themes'

" tmuxline (matching statusbar for tmux)
Plugin 'edkolev/tmuxline.vim'

" vim-tmux-navigator (navigante vim/tmux with the same keys)
Plugin 'christoomey/vim-tmux-navigator'

" airline color scheme - wombat256
" Plugin 'ShawnHuang/vim-airline-wombat256'

" " solarized (color scheme)
" Plugin 'altercation/vim-colors-solarized'

" gruvbox (color scheme)
Plugin 'morhetz/gruvbox'

" " Brackets auto-complete
" Plugin 'jiangmiao/auto-pairs'
Plugin 'Raimondi/delimitMate'

" Clang
" Plugin 'justmao945/vim-clang'

" Python folding
" Plugin 'tmhedberg/SimpylFold'

" Fast automatic folds
Plugin 'Konfekt/FastFold'

" Terraform highlighting/formatting
" Plugin 'hashivim/vim-terraform'

" Go template syntax highlighting
" Plugin 'ddollar/golang-template.vim'

" Helm (yaml + gotmpl + sprig + custom) highlighting
Plugin 'towolf/vim-helm'

" Typescript syntax highlighting
" Plugin 'leafgarland/typescript-vim'

" Kotlin syntax highlighting
" Plugin 'udalov/kotlin-vim'

" vim-go, go tooling and gopls support
" Plugin 'fatih/vim-go'

" Tagbar (outline based on ctags)
" Plugin 'preservim/tagbar'

" Collection of language packs
Plugin 'sheerun/vim-polyglot'

" To install plugins :PluginInstall

" All of your plugins MUST be added BEFORE the following line
call vundle#end()			" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" 					  :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" 					  auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Search into subfolders - provides tab-completion for files
set path+=**
set wildmenu

" Tab settings
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
filetype indent on

" Encoding settings
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8
scriptencoding utf-8

" Syntax hilighting and color settings
" if &term =~ '256color'
"     set t_ut=
" endif
" set t_Co=256

set t_Co=16
" let g:solarized_termcolors=16

syntax enable
" let g:solarized_termcolors=256
" colorscheme wombat256
" colorscheme solarized
" set background=light
" Use JSX highlighting for .js files (not just .jsx)
let g:jsx_ext_required = 0

" Enable mouse usage for 'a'll modes
set mouse=a

" Search settings
set incsearch
set hlsearch

" Enable transparent background
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Text wrapping, also used for longlines warning
"set textwidth=80

" Folding settings
set nofoldenable
set foldmethod=syntax
set foldlevelstart=0
set foldnestmax=1

" Window split settings
set splitbelow
set splitright

" Keymaps
nmap <silent> <C-n> :NERDTreeToggle<CR>

" window selection
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" window arrangement
execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <M-h> <C-W>H
nnoremap <M-j> <C-W>J
nnoremap <M-k> <C-W>K
nnoremap <M-l> <C-W>L

" space open/closes folds
nnoremap <Space> za
vnoremap <Space> za

" <F8> F8 toggles Tagbar
nmap <F8> :TagbarToggle<CR>

" F8 toggles Goyo (zen mode)
nnoremap <F9> :Goyo<CR>

" Use jj to exit insert mode
:imap jj <Esc>

" Toggle paste mode
set pastetoggle=<F2>

" Airline settings
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#whitespace#checks = [ 'indent', 'long' ]
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:airline_theme='solarized'
set ttimeoutlen=50
set noshowmode " airline shows mode anyway, not necessary

" Tmuxline settings
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = 'custom'

" Turn off automatic syntax checking
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR>
nnoremap <F7> :SyntasticCheck<CR>

" Fix ctrl-c lag in SQL files
let g:ftplugin_sql_omni_key = '<C-j>'

" Omnicomplete
set omnifunc=syntaxcomplete#Complete

set backspace=indent,eol,start

" Filetype dependent indentation
:autocmd Filetype yaml set softtabstop=2
:autocmd Filetype yaml set sw=2
:autocmd Filetype yaml set ts=2

" Visual bell
set visualbell

" Align Terraform settings

let g:terraform_align=1

" Set up gotags (for outline)
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

"
" Base64 shortcuts
"
" 1. base64-encode(visual-selection) -> F2 -> encoded base64-string
:nnoremap <F3> viWc<c-r>=system("base64 -w 0", @")<cr><esc>
" :vnoremap <F3> c<c-r>=system("base64 -w 0", @")<cr><esc>
" 2. base64-decode(visual-selection) -> F3 -> decoded string
" :vnoremap <F4> c<c-r>=system("base64 -d", @")<cr> 
:nnoremap <F4> viWc<c-r>=system("base64 -d", @")<cr><esc>

set background=dark
colorscheme wombat256
let g:airline_theme='badwolf'

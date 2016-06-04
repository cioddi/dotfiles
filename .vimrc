let &t_8f="\e[38;2;%ld;%ld;%ldm"
let &t_8b="\e[48;2;%ld;%ld;%ldm"
set guicolors

set nocompatible              " be iMproved, required
filetype off                  " required

set backupdir^=~/.vim/backup//
set undodir=~/.vim/undo/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-fugitive'

Plugin 'idanarye/vim-merginal'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'StanAngeloff/php.vim'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'bling/vim-airline'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'shawncplus/phpcomplete.vim'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/syntastic'

Plugin 'mileszs/ack.vim'

"Plugin 'altercation/vim-colors-solarized'

Plugin 'FelikZ/ctrlp-py-matcher'

Plugin 'mattn/emmet-vim'

"Plugin 'pangloss/vim-javascript'

Plugin 'jelera/vim-javascript-syntax'

"Plugin 'terryma/vim-multiple-cursors'

"Plugin 'Shougo/neocomplete.vim'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'AutoComplPop'

Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/vim-easy-align'

Plugin '2072/PHP-Indenting-for-vim'

Plugin 'joonty/vdebug'

Plugin 'juneedahamed/svnj.vim'


call vundle#end()            " required
filetype plugin indent on    " required

"GVIM SETTINGS
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"theme
syntax enable
let g:loaded_matchparen=1
"NoMatchParen
"set background=dark
colorscheme monokain

"enable background buffers
set hidden

"show line numbers
set nu

"enable vim omnicompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=menu

let g:acp_enableAtStartup = 1

"airline config
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

"ctrlp
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_working_path_mode = 'r' 
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore "**/*.jpg"
      \ --ignore "**/*.png"
      \ --ignore "**/*.PDF"
      \ --ignore "**/*.pdf"
      \ --ignore lib/filter
      \ --ignore lib/form
      \ --ignore cache
      \ --ignore lib/vendor
      \ --ignore lib/model/om
      \ --ignore web/img
      \ --ignore web/images
      \ --ignore web/piwikik
      \ --ignore test/bootstrap
      \ --ignore web/___phpadmin
      \ --ignore test/functional
      \ --ignore node_modules
      \ -g ""' 

"nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autofind=1

"phpcomplete
autocmd CompleteDone * pclose

"SETTINGS
set expandtab
set tabstop=2
set shiftwidth=2

"ultisnips
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

"mappings
map <C-l> :bn<cr>
map <C-h> :bp<cr>

map <C-j> 20j
map <C-k> 20k

map <C-up> ddkP
map <C-down> ddp
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

noremap <C-q> :bd<cr>

map <ScrollWheelLeft> <nop>
map <ScrollWheelRight> <nop>
map <ScrollWheelDown> <nop>
map <ScrollWheelUp> <nop>
map <S-ScrollWheelLeft> <nop>
map <S-ScrollWheelRight> <nop>
map <S-ScrollWheelDown> <nop>
map <S-ScrollWheelUp> <nop>

map <C-ScrollWheelLeft> <nop>
map <C-ScrollWheelRight> <nop>
map <C-ScrollWheelDown> <nop>
map <C-ScrollWheelUp> <nop>

"nnoremap <C-S-j> :m .+1<CR>==
"nnoremap <C-S-k> :m .-2<CR>==
"inoremap <C-S-j> <Esc>:m .+1<CR>==gi
"inoremap <C-S-k> <Esc>:m .-2<CR>==gi
"vnoremap <C-S-j> :m '>+1<CR>gv=gv
"vnoremap <C-S-k> :m '<-2<CR>gv=gv

let mapleader=","

let g:ackprg = 'ag --nogroup --nocolor --column'

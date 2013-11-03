set nocompatible               " be iMproved
filetype off

set autoindent
set autoread
set backup
set backupdir=~/.vim/backup
set clipboard=unnamed,autoselect
set cursorline
set directory=~/.vim/swap
set expandtab
set helplang=en
set hidden
set laststatus=2
set lazyredraw
set list
set listchars=tab:^\ ,trail:~
set modeline
set noerrorbells
set nrformats=
set scrolloff=5
set shiftwidth=2
set swapfile
set tabstop=2
set ttyfast
set visualbell t_vb=
set whichwrap=b,s,h,l
 
" Vimを終了してもUndo
if has('persistent_undo')
  set undofile
  set undodir=./.vimundo,~/.vim/undo
endif
      

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

set tabstop=2
 
" originalrepos on github
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

if has("lua")
	  NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
	          \   'insert' : 1,
	          \ }}
  endif

  NeoBundleLazy 'Shougo/neosnippet', {
        \ 'autoload' : {
        \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
        \   'filetypes' : 'snippet',
        \   'insert' : 1,
        \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
        \ }}

  NeoBundle 'tpope/vim-rails', { 'autoload' : {
        \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}

  NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
        \ 'autoload' : {
        \   'insert' : 1,
        \ }}

  NeoBundleLazy 'edsono/vim-matchit', { 'autoload' : {
        \ 'filetypes': 'ruby',
        \ 'mappings' : ['nx', '%'] }}

  NeoBundleLazy 'basyura/unite-rails', {
        \ 'depends' : 'Shougo/unite.vim',
        \ 'autoload' : {
        \   'unite_sources' : [
        \     'rails/bundle', 'rails/bundled_gem', 'rails/config',
        \     'rails/controller', 'rails/db', 'rails/destroy', 'rails/features',
        \     'rails/gem', 'rails/gemfile', 'rails/generate', 'rails/git', 'rails/helper',
        \     'rails/heroku', 'rails/initializer', 'rails/javascript', 'rails/lib', 'rails/log',
        \     'rails/mailer', 'rails/model', 'rails/rake', 'rails/route', 'rails/schema', 'rails/spec',
        \     'rails/stylesheet', 'rails/view'
        \   ]
        \ }}

  NeoBundleLazy 'taka84u9/vim-ref-ri', {
        \ 'depends': ['Shougo/unite.vim', 'thinca/vim-ref'],
        \ 'autoload': { 'filetypes': ['ruby', 'eruby', 'haml'] } }

  NeoBundleLazy 'alpaca-tc/neorspec.vim', {
        \ 'depends' : ['alpaca-tc/vim-rails', 'tpope/vim-dispatch'],
        \ 'autoload' : {
        \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
        \ }}

  NeoBundleLazy 'alpaca-tc/alpaca_tags', {
        \ 'depends': 'Shougo/vimproc',
        \ 'autoload' : {
        \   'commands': ['TagsUpdate', 'TagsSet', 'TagsBundle']
        \ }}

  NeoBundleLazy 'tsukkee/unite-tag', {
        \ 'depends' : ['Shougo/unite.vim'],
        \ 'autoload' : {
        \   'unite_sources' : ['tag', 'tag/file', 'tag/include']
        \ }}


filetype plugin indent on     " required!
filetype indent on
syntax on

" Set defaults that may be overridden by plugins.

set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set autoindent

set backspace=indent,eol,start

set number

set mouse=a

if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

" Replace currently selected text with default register, without yanking
" replaced text to said register.
"
" Default behaviour is still available with P.
vnoremap p "_dP

set list
set listchars=tab:→\ ,eol:↵

" Initialize Vundle and bundles.
source ~/.vim/vundlerc

set t_Co=256
syntax on
colorscheme jellybeans

" Override plugin configurations.

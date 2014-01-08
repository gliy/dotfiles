
" GENERAL OPTIONS

set viminfo='20,\"500,%	" ' Maximum number of previously edited files for which the marks
			"   are remembered.  
			" " Maximum number of lines saved for each register.
			" % When included, save and restore the buffer list.  If Vim is
			"   started with a file name argument, the buffer list is not
			"   restored.  If Vim is started without a file name argument, the
			"   buffer list is restored from the viminfo file.  Buffers
			"   without a file name and buffers for help files are not written
			"   to the viminfo file.
set history=500		" keep {number} lines of command line history
set nowrap              " whether to wrap lines
set tabstop=3
set shiftwidth=3	" sw, number of spaces shifted left and righ when issuing << and >>
set expandtab
			"  commands
set number		" number lines
set nocompatible
set incsearch
set showmatch
set backspace=1
set shell=/bin/bash\ --rcfile\ ~/.bash_profile\ -i

syntax on
set backspace=indent,eol,start
set cinoptions=:0,p0,t0
set cinwords=if,unless,else,while,until,do,for,switch,case
set formatoptions=tcqr
set cindent
let g:dbext_default_profile_mysql = 'type=MYSQL:host=csc-dbsrv01.csc.calpoly.edu:user=ikingsbu:passwd=S33pr0d1:dbname=ikingsbu'
let g:dbext_default_profile='mysql'
filetype plugin on
vmap <leader>uc  :call ChangeSqlCase()<cr> 
set omnifunc=syntaxcomplete#Complete
" VIM DISPLAY OPTIONS
 set showmode	
" set ruler
" set title
colorscheme desert 
set showcmd
set wildmenu	
command Drops silent !dropsql | redraw!
if has("autocmd")
        autocmd BufRead *.sql set filetype=mysql      
        autocmd BufRead *.test set filetype=mysql
endif

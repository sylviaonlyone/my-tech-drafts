set nocompatible
"filetype plugin on
"let g:netrw_browse_split=2
let g:netrw_fastbrowse=2

source $VIM/vim73/vimrc_example.vim
source $VIM/vim73/mswin.vim
behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = ''
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  silent execute '\"!C:\
"endfunction

"source $VIM/vimfiles/colors/darkblue.vim
colorscheme peachpuff
set grepprg=grep\ -nH
"set makeprg=gmake
"set gfn=Monospace\ 18
set gfn=Courier\ 10\ Pitch\ 9

set expandtab
set tabstop=2
set shiftwidth=2
set autowrite

set autoindent
set cindent
set backupdir=$HOME/.vim/backup/

set foldmethod=indent
"set foldcolumn=2
"highlight FoldColumn guibg=lightyellow guifg=darkblue
"set tags=/workarea/wa_s30/j114liu/sb6/tags
"
" the following set used for resolve vim auto search tags problem
set tags=tags;
set autochdir

"set updatetime=800
"set previewheight=15
"au! CursorHold *.[ch] nested exe "silent! botright ptag " . expand("<cword>")
set number
set numberwidth=1

" map the Ctrl-N to toggle cursorline on/off.
nnoremap <C-N> :setlocal cursorline!<CR>

" set taglist command
" source $VIM/vimfiles/plugin/taglist.vim
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1

if has("cscope")
 set csprg=cscope
 set csto=0
 set cst
 set nocsverb
 set cscopequickfix=s-,c-,d-,i-,t-,e-
 set csverb
endif

"source ~/vimfiles/syntax/cocci.vim

if &term =~ "xterm"
 if has("terminfo")
   set t_Co=8
   set t_Sf=<Esc>[3%p1%dm
   set t_Sb=<Esc>[4%p1%dm
 else
   set t_Co=8
   set t_Sf=<Esc>[3%dm
   set t_Sb=<Esc>[4%dm
 endif
endif
"set mouse-=a
filetype plugin indent on
syntax on

" set git status bar in vim
"function! MyStatusLine()
"if !GitBranch()
"return '%100.(File:%f     Modify:%m     ReadOnly:%r     Buffer:%n     %60.(Line:Col  %4.l:%-4.c%)%)'
"else
"return '*%-{GitBranch()}     %100.(File:%f     Modify:%m     ReadOnly:%r     Buffer:%n     %60.(Line:Col  %4.l:%-4.c%)%)'
"endif
"endfunction

"set laststatus=2
"set statusline=%!MyStatusLine()

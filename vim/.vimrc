"set runtimepath=$HOME/.vim,$VIM/ultisnips,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$VIM/ultisnips/after,$HOME/.vim/after

runtime bundles.vim

syntax on

set encoding=utf-8

runtime! ftdetect/UltiSnips.vim

set autowrite
set autowriteall
set laststatus=2
set incsearch
set hlsearch
set expandtab
set modeline
set sw=2
set ts=2
set pastetoggle=[23~
set gdefault
set shortmess+=I
"set cursorline "is so very slow
set scrolloff=4
set backspace=2

set title

set wildmenu
set wildmode=list:longest

set undodir="~/.vim/undo"
set undofile

set t_ut= "Needed to get non-text background colors to work correctly in urxvt + tmux
let s:hour = str2nr(strftime("%H"))
if s:hour > 6 && s:hour < 21
  set background=light
else
  set background=dark
endif

colorscheme solarized
nnoremap <F12> "*p

let g:delimitMate_offByDefault=1 "Just can't stand it anymore
"let g:delimitMate_expand_cr=1
"let g:delimitMate_expand_space=1
"
set tags+=.git/bundle-tags

if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source " .path
  endfor
endif

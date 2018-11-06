:set number
:set spell

execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized


"VIM-LATEX STUFF"
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"let Tex_FoldedSections=""
"let Tex_FoldedEnvironments=""
"let Tex_FoldedMisc=""

set guifont=Consolas:h11:cANSI

inoremap jk <ESC>
let mapleader = "\<Space>"

hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare	

hi SpellBad cterm=underline
hi SpellLocal cterm=underline
hi SpellCap cterm=underline
hi SpellRare cterm=underline

function! WordProcessor()
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  "set thesaurus+=/home/jeff/.vim/thesaurus/mthesaur.txt
   "complete+=s makes autocompletion search the thesaurus
  "set complete+=s
endfunction
com! WP call WordProcessor()

set splitright

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }


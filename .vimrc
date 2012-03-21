"Rely on pathogen to handle all of the vim plugins in their own bundles"
call pathogen#infect()

"== GUIafy the VIM terminal interface =="
set nocompatible
set mouse=a
set number
set visualbell

if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif
if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors 
    syntax on
    set background=dark
endif

"== Filetypes =="
au BufNewFile,BufRead *.html.ep set filetype=html.perl.eperl "Mojolicious embedded perl templates"

"== Buffers =="
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1


"== Indentation =="
filetype plugin indent on
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

"Map the tab key in visual and normal mode to indent code"
vmap <tab> >gv
vmap <s-tab> <gv
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

set showmatch

"== Searching =="
set smartcase
set incsearch
set hlsearch

"== Perl specific config =="

":Tidy with visual range will run perltidy on the selection"
command -range=% -nargs=* Tidy <line1>,<line2>!
    \perltidy <args>

"Allow perldoc markup to be included with the perl"
let perl_include_pod   = 1

"Highlight more complex expressions in perl"
let perl_extended_vars = 1

"Use a larger window of code for working out perl highlighting, fixes some heredoc issues."
let perl_sync_dist     = 250

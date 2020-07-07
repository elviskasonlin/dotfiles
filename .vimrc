" /////////////////////
" Elv-s Custom Vim Setup
" /////////////////////

" Main essentials setup
syntax on

set expandtab tabstop=2 shiftwidth=2
set path=$PWD/**
set t_Co=256

let mapleader = ","

" ////////////////////
" /////OWN TWEAKS/////
" ////////////////////

" Sets vim in no compatibility mode
set nocp

" Enable mouse
set mouse=a

" Tabs & Spaces Tweaks
set tabstop=2 shiftwidth=2 expandtab

" Remapping nav keys j & k
" nnoremap j k
" nnoremap k j

" Remapping ; & : for : and :! respectively
nnoremap ; :
nnoremap : :!

" Remapping ESC to ALT+J
inoremap kj <ESC>

" Showing stuff
set ruler " Ruler at the side
set showcmd "Shows current cmd at the bottom right.
" set list " Shows \n using $ and shows tab as ^I

" Setting hybrid line numbers
set number " Line Number
set relativenumber " Sets relative numbers for use with <num>j & <num>k

" Converting tabs to spaces
nnoremap <leader>cta :retab
nnoremap <leader>ctc :.retab

" Go to current cursor
nnoremap <leader>we :e <CR>

" Filetype
filetype plugin on
filetype plugin indent on

" Enable code folding
set nofoldenable
set foldnestmax=10
set foldlevel=2
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" Vim Search improvements
set incsearch "Sets incremental search (or in other words, search as you type)
set hlsearch  "Hightlight items found in search
set ic "Ignores case

" Move cursor to one past last character in normal mode
set virtualedit=onemore

" Set automatic indenting, C-style
set cindent

" Disable strict backspace.
set backspace=indent,eol,start

" Buffer tweaks
" :ls, lists open buffers

set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

nnoremap <leader>lb :ls<CR>
nnoremap [ :bp!<CR>
nnoremap ] :bn!<CR>
nnoremap <leader>t :enew<CR> " create new buffer
nnoremap <leader>xt :bd! <CR>

" Tab tweaks
" :tabs, lists all tabs & their buffers.
" :tabn
" :tabp
" :tabm <number>
" :tabfirst
" :tablast
" :tabe

" Window tweaks
" To close the window, keep the buffer, ctrl-w + c
" To close other windows, keep current window, ctrl-w + o
" To distribute width of open windows, ctrl-w + =

nnoremap <leader>swh :topleft vnew<CR>
nnoremap <leader>swl :botright vnew<CR>
nnoremap <leader>swj :topleft new<cr>
nnoremap <leader>swk :botright new<cr>

nnoremap <leader>c :close!<CR>

" /////////////////////
" /////VIM PLUGINS/////
" /////////////////////

" VIM PLUG SET UP
call plug#begin('~/.vim/vimplugins')

" /////////THEMES////////
" Thematic Plugin. To change themes on demand
Plug 'https://github.com/reedes/vim-thematic'
" Airline-themes
Plug 'vim-airline/vim-airline-themes'
" Vim theme preview
Plug 'https://github.com/felixhummel/setcolors.vim'

" /////////DEPENDENCIES//////
Plug 'https://github.com/powerline/fonts'
Plug 'https://github.com/flazz/vim-colorschemes'

" /////////TWEAKS///////
" Super Tab
Plug 'ervandew/supertab'
" EasyMotion (Easy nav movement)
Plug 'https://github.com/easymotion/vim-easymotion'
" Nerd Commenter (Easy commenting)
Plug 'scrooloose/nerdcommenter'
" Auto close brackets
Plug 'jiangmiao/auto-pairs'
" Fuzzy searching
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
" Indent guidelines.
Plug 'https://github.com/Yggdroot/indentLine'

" ////////NEW ITEMS//////
" Git interface
Plug 'tpope/vim-fugitive'
" Vim Airline
Plug 'vim-airline/vim-airline'
" Vim Minimap
Plug 'https://github.com/severin-lemaignan/vim-minimap'

" ////////MAJOR ADD-ONS///////
" Syntastic (Linting)
Plug 'https://github.com/vim-syntastic/syntastic'
" YouCompleteMe (Auto completion engine)
Plug 'Valloric/YouCompleteMe'
" Language Server Client (LSC)
Plug 'https://github.com/natebosch/vim-lsc'

" ////////LSC ADDITIONS///////
" Dart language for LSC
Plug 'dart-lang/dart-vim-plugin'

" ////////SYNTAX HIGHLIGHT///////
" JSON
Plug 'elzr/vim-json'
" Kotlin
Plug 'udalov/kotlin-vim'
" C++
Plug 'https://github.com/bfrg/vim-cpp-modern'
" JS
Plug 'https://github.com/pangloss/vim-javascript'
" JSX
Plug 'https://github.com/mxw/vim-jsx'
" MD
Plug 'gabrielelana/vim-markdown'
" Dart
Plug 'dart-lang/dart-vim-plugin'

" ////////LANG-SPECIFIC ADDITIONS///////
" Python Pep8 Indent
Plug 'Vimjas/vim-python-pep8-indent'



"(Normal) <Space> Changes status of current item. List becomes checklist, checklist
" becomes checked etc.
" (Normal) <Leader>ft Format furrent table
" (Normal/Visual) <Leader>e Edit current code block in another buffer

" Plug set-up end
call plug#end()

" ///////////////////////////////////
" /////VIM PLUGIN CONFIGURATIONS/////
" ///////////////////////////////////

" Thematic
let g:thematic#themes = {
\ 'Default' :{'colorscheme': 'darth',
\             'airline-theme': 'sol',
\             'ruler': 1,
\             'laststatus': 2,
\            },
\ 'Pastelised' :{'colorscheme': 'norwaytoday',
\             'airline-theme': 'wombat',
\             'ruler': 1,
\             'laststatus': 2,
\            },
\ }

let g:thematic#theme_name = 'Pastelised'


" Airline
let g:airline#extensions#tabline#enabled = 1
"let laststatus=2
let g:airline_powerline_fonts = 1

" YouCompleteMe
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_key_list_select_completion = ['<TAB>', '<C-N>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<C-P>', '<Up>']
let g:ycm_key_invoke_completion = '<C-F>'

" Vim Minimap
let g:minimap_show='<leader>mms'
let g:minimap_update='<leader>mmu'
let g:minimap_close='<leader>mmc'
let g:minimap_toggle='<leader>mmt'

" Syntastic
nnoremap <leader>[ :lprevious
nnoremap <leader>] :lnext
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 6
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']

" C++ syntax
let g:c_no_curly_error=1
let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1

" Netrw directory browser
nnoremap <leader>b :Lexplore<Enter>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" CtrlP fuzzy search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_working_path_mode = 'a'

" Vim JSX
let g:jsx_ext_required = 0

" Indent Guidelines
let g:indentLine_char = '|'
nnoremap <leader><leader>i :IndentLinesToggle

" Language Server Client (LSC)
let g:lsc_auto_map = v:true

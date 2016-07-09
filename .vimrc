" vim: set ts=4 sw=4 noet:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .pablorc / my .vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" omfg: messed up file format line endings
set ffs=unix,dos,mac

" standard interface & usability settings
syntax on
set undolevels=4096 " week(s) long sessions + :earlier
set ruler
set showcmd
set showmode
set is
set hls
set ic

" enable modelines
set modeline
set modelines=5

" enable omnifunc
filetype plugin on

" style-specific settings
set ts=4 sw=4   " these shouldn't be set independently
set noexpandtab " expand tabs (I hate)

" tags (recursive)
set tags=tags;.

" things you might want to selectively turn off
set ai        " autoindent is bad for paste
set nu        " line numbering is bad for copy

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'Not just settings' / slightly more involved add-ons and modifications
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set a colorscheme that isn't so annoying in MacVim
color torte

"
" Tag up the statusline with my special flavor
"
" - .pablorc tag
" - cursor byte value inspector (in hex)
" - labels
"
set laststatus=2 " double-wide
set statusline=.pablorc\ %f\ %m\ %r%=(byte:\ 0x%B)\ (col:\ %c%V\ line:\ %l/%P)
hi StatusLine ctermfg=4 ctermbg=6 gui=bold

"
" Emphasize insert mode with color
"
if version >= 700
	hi ModeMsg ctermfg=black ctermbg=yellow gui=undercurl guisp=Magenta
	au InsertLeave * hi ModeMsg ctermfg=black ctermbg=yellow
	au InsertEnter * hi ModeMsg ctermfg=white ctermbg=none
endif

" select my leader key
:let mapleader = " "

" map CommandT plug-in to F4
nmap <silent> <F4> :CommandT<CR>
nmap <silent> <leader>t :CommandT<CR>
nmap <silent> <leader>T :CommandTFlush<CR>

" ignore bullshit files
set wildignore+=*.pyc,*.obj,*.o,.svn/**,.git/**

" ignore CMake files
set wildignore+=*.cmake,CMakeCache.txt,CMakeFiles/**,Testing/**

" ignore Node.js artifacts
set wildignore+=node_modules/**,coverage/**

" ignore images
set wildignore+=*.png,*.gif,*.jpg,*.jpeg,*.ico

" ignore fonts
set wildignore+=*.otf,*.woff,*.eot,*.ttf

" map grep next & previous
map <leader>n :cn<cr>
map <leader>p :cp<cr>
map <leader>c :botright cw 10<cr>

" map settings shortcuts
nnoremap <A-C-F5> :sp ~/.vimrc<CR><C-w>_
nnoremap <S-F5> :e ~/.vimrc<CR>
nnoremap <F5> :so ~/.vimrc<CR>

" map window keys
nnoremap <C-k> <C-w><Up><C-w>_
nnoremap <C-j> <C-w><Down><C-w>_
nnoremap <C-h> <C-w><Left><C-w>_
nnoremap <C-l> <C-w><Right><C-w>_

" map quick close w/ auto window zoom & quick save
map <leader>q :q<cr><C-w>_
map <leader>Q :qa!<cr>
map <leader>w :w<cr>

" enable Omni completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" map JSON to JavaScript
autocmd BufRead,BufNewFile *.json setfiletype javascript

" disable the toolbar in MacVim
if has("gui_running")
	set guioptions=egmrt
endif

" load pathogen
execute pathogen#infect()


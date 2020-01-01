" Vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
set background=dark
call plug#begin('~/.vim/bundle')
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
" Plug 'tmux-plugins/vim-tmux-focus-events'
" Plug 'Valloric/YouCompleteMe'
Plug 'thinca/vim-localrc'
call plug#end()
" End Vundle


" show existing tab with 4 spaces width
set tabstop=4

" when intending with '>' use 4 spaces width
set shiftwidth=4
set updatetime=100

" On pressing tab, insert 4 spaces
set expandtab

" Autoindent
set autoindent

" Custom Title Name while modifying file
set title

" Shows Absolute Line number on current line and relative number on other lines
set number relativenumber

" Remap Caps Lock to Escape

" au FocusGained * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au FocusLost * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
" au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Do some Remappings for \
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>j <Plug>GitGutterNextHunk
nmap <leader>k <Plug>GitGutterPrevHunk

" Remappings for german keyboard layout in normal mode
nmap Ö :
nmap ö ;
nmap ä '
nmap Ä "

" nnoremap <ESC> :noh<CR><ESC>:<backspace>
nnoremap <silent> <ESC> :noh<CR><ESC>
" inoremap <ESC> <ESC>:noh<CR>:<backspace>

" Differnt Color for Line Numbers
highlight LineNr ctermfg=grey

" Show Lines above and below cursor
set scrolloff=8
" set mouse=a

" Set cursor shape for vim
" Not needed for neoVim
" let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
" let &t_EI = "\<Esc>[2 q"

" Markdown Preview
let vim_markdown_preview_github=1

let g:vimtex_compiler_progname = 'nvr'

let g:ycm_python_binary_path = 'python3'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
if exists('&signcolumn')
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always = 1
endif


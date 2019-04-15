set number
set laststatus=2


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

call plug#begin()

Plug 'terryma/vim-smooth-scroll'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'flazz/vim-colorschemes'

Plug 'drewtempelmeyer/palenight.vim'

Plug 'leafgarland/typescript-vim'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'

call plug#end()

imap jk <Esc>

set termguicolors
colo palenight 
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
syntax on

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

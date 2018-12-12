set nocompatible              " be iMproved, required filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" List of plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-fugitive.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-prettier'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
" Plugin 'scrooloose/syntastic'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomtom/tcomment_vim'
Plugin 'isRuslan/vim-es6'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'Valloric/MatchTagAlways'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Townk/vim-autoclose'
Plugin 'edsono/vim-matchit'
Plugin 'vim-scripts/closetag.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim.git'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'raphamorim/lucario'
Plugin 'skywind3000/asyncrun.vim'

" Plugin 'kristijanhusak/vim-hybrid-material'
" All of the Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" shortcuts
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

"tabs shortcuts
nnoremap tn  :tabnew<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap td  :tabclose<CR>
"
" vim-airline configs
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

"
"set the current directory, which works with ctrl p as well
let g:NERDTreeChDirMode       = 2 
let NERDTreeShowHidden				=	1

"Make vim pretty
set t_Co=256
" color badwolf
" color happy_hacking
" set t_ut=
let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
syntax enable
set number
colorscheme zenburn
set encoding=utf-8    " Set default encoding to UTF-8

"Ctrl + l line toggle function
function! NumberToggle()
	if(&rnu == 0 && &nu == 0)
		set nu
	elseif(&nu == 1)
		set nonu
		set rnu
	else
		set nornu
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>


" store swap files in one location
set directory=~/.vim/swap,.

" Folding https://wincent.com/wiki/Vim_cheatsheet
set foldmethod=indent


" RSpec see: https://robots.thoughtbot.com/running-specs-from-vim-sent-to-tmux-via-tslime
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
map <C-f> :call RunCurrentSpecFile()<CR>
map <C-d> :call RunNearestSpec()<CR>
map <C-k> :call RunLastSpec()<CR>
map <C-a> :call RunAllSpecs()<CR>

" ES6 SYNTHAX
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

set hidden

" EMMET JSX
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
set backupdir=~/vimbackups/
set directory=~/vimbackups/
set undodir=~/vimbackups/



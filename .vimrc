syntax on
set guifont=Monaco:h13
"set tabstop=4
set hlsearch
set nocompatible
set nofoldenable
set history=1000
set backspace=indent,eol,start
" prompt when existing from an unsaved file
set confirm
set t_Co=256
set title
set autoread
set spell
set cursorline
set cursorcolumn
set fenc=utf-8
set encoding=utf-8
set langmenu=zh_CN.UTF-8

" bundle conf
filetype off
set rtp+=/mnt/d/UbuntuApps/vimbundle/bundle/Vundle.vim
call vundle#begin("/mnt/d/UbuntuApps/vimbundle/bundle/")
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jalvesaq/Nvim-R'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'jalvesaq/vimcmdline'
call vundle#end()
filetype plugin indent on

" YouComleteMe conf
let g:ycm_use_clangd = 0
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='/mnt/d/UbuntuApps/vimbundle/bundle/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_strings = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_autoclose_preview_window_after_completation=1
let g:ycm_min_num_of_chars_for_completion=3
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Nvim-R conf
let R_assign = 0
let R_objbr_place = 'script,right'

" vim-colorschemes conf
colorscheme wombat

" vim-json conf
let g:vim_json_syntax_conceal = 0

" nerdtree conf
nmap <F2> :NERDTreeToggle<CR>
let NERDChristmasTree=0
let NERDTreeChDirMode = 2
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize = 25
let NERDTreeWinPos = "left"

" vim-airline conf
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tagbar#enabled=0

" tagbar conf
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable("coffeetags")
    let g:tagbar_type_coffee = {
          \ 'ctagsbin' : 'coffeetags',
          \ 'ctagsargs' : '',
          \ 'kinds' : [
          \ 'f:function',
          \ 'o:object',
          \ ],
          \ 'sro': ".",
          \ 'kind2scope' : {
          \ 'f' : 'object',
          \ 'o' : 'object',
          \ }
          \ }
    let g:tagbar_type_markdown = {
          \ 'ctagstype' : 'markdown',
          \ 'sort' : 0,
          \ 'kinds': [
          \ 'h:sections'
          \ ]
          \ }
endif

" markdown-preview
let g:mkdp_path_to_chrome = "/usr/bin/firefox"

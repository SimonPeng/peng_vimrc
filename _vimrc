
" necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"==========================================================
" use pathogen to load plugins from bundle directory
" put pathogen.vim in the folder ".vim/autoload/" 
"==========================================================
" call pathogen#runtime_append_all_bundles()
call pathogen#infect()
"call pathogen#helptags()


" use vim settings, rather then vi settings (much better!).
" this must be first, because it changes other options as a side effect.
set nocompatible


"==========================================================
" => general
"==========================================================

set history=100

" set doc explorer's directtory is current directory
set autochdir

" auto-reload after doc is chagned in other editor
set autoread

set mouse=a
set selection=exclusive
set selectmode=mouse,key
set mouse=nv

" remember info about open buffers on close
set viminfo^=%

" reload the last position
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Configure backspace so it acts as it should act
set backspace=2
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l
set whichwrap+=<,>,h,l,[,]

set magic " 設置魔術

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

" 啟動的時候不顯示那個援助索馬里兒童的提示
set shortmess=atI

" 通過使用: commands命令，告訴我們文件的哪一行被改變過
set report=0

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb= " 置空錯誤鈴聲的終端代碼

" won't see "E37: No write since last change (add ! to override)"
" A buffer becomes hidden when it is abandoned
set hidden


"==========================================================
" => gui
"==========================================================
" maximum the initial window
"au GUIEnter * simalt ~x

" set extra options when running in GUI mode
if has("gui_running")
	" remove menu bar
	set guioptions-=m

	" remove toolbar
    set guioptions-=T

	" remove right-hand scroll bar
	"set guioptions-=r
	
    "set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" set the initial size of the Vim window
set lines=65
set columns=160

set updatetime=300

set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

set cmdheight=2

" show line number
set number
set numberwidth=5

set scrolloff=3

" set warning line in the specific colume
"set colorcolumn=80,100
set colorcolumn=100
"let &colorcolumn=join(range(100,999),",")
"au FileType * hi colorcolumn guibg=#2d2d2d ctermbg=246

" highlight current line of cursor 
set cursorline

"----------------------------------------
"  colors and fonts
"----------------------------------------
" Enable syntax highlighting
syntax enable

if has("win32")
    "set guifont=Consolas:h12:cANSI
    "set guifont=DroidSansMono:h12
    "set guifont=Inconsolata:h12
    "set guifont=Fixedsys:h12:cANSI
    set guifont=Inconsolata:h12:cANSI
endif

colorscheme torte_psy

 
"----------------------------------------
"  status line
"----------------------------------------
" always show the status line
set laststatus=2


"----------------------------------------
" cursor cross highlight
"----------------------------------------
let g_cursor_cross_highlight = 0
if (g_cursor_cross_highlight) 
	if has("gui_running")
	 set cursorline
	 hi cursorline guibg=#333333
	 set cursorcolumn
	 hi CursorColumn guibg=#333333
	endif
endif


"====================================================================
" => text, tab and indent related
"====================================================================

" 自動格式化
" auto format
"set formatoptions=tcrqn

" necessary to make ftdetect work on Linux
filetype off          
syntax on

" detect file-type
filetype on

" load file-type plug-in
filetype plugin on

" load relative indent for specific file-type
filetype indent on

" syntac highlight
syntax on
syntax enable

" use indent of previous line 
set autoindent

" use smart indent for open new line
set smartindent

" use indent for C/C++ code
set cindent

" 1 tab == 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" don't use space to replace tab
"set noexpandtab

" use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

set lbr
set textwidth=120

"set wrap 
:set nowrap 

" do not wrap when following symbol 
set iskeyword+=_,$,@,%,#,-

"====================================================================
" => files, backups and undo
"====================================================================

" turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup

"setlocal noswapfile
set noswapfile

"set bufhidden=hide

" prevents automatic write backup
set nowb 

"在命令行打開文件或者輸入命令時按Tab（以輸入字符為前綴補全）
"或者Ctrl-d（列出包含輸入字符的所有匹配項目）自動補全
"set wildmode=list:full
set wildmenu

"in ESC: (command mode), disable auto completion next part
"set wildmode=list:longest
"set wildignore+=*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git

"-----------------------------
" set file type
" fileformats (ffs)
" default file types
set ffs=dos,unix,mac

" set utf8 as standard encoding and en_US as the standard language
"set encoding=utf8

"set confirm

"set fileencoding=utf-8

"set fencs=utf-8,gbk,big5,euc-jp,utf-16le
set fencs=utf-8,big5,gbk,euc-jp,utf-16le
"set fenc=utf-8 enc=utf-8 tenc=utf-8   " right-key menu's font incorrect

"au BufNewFile,BufRead *.log set filetype=psy
au BufNewFile,BufRead *.log set filetype=c


"====================================================================
" search and match 
"====================================================================

" show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=5

"set ignorecase   " /\c{word}

set incsearch
set hlsearch

"set nowrapscan " 禁止在搜索到文件兩端時重新搜索

" 輸入:set list命令是應該顯示些啥？
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$


"====================================================================
" => fold
"====================================================================

set foldenable             " 開始摺疊
set foldmethod=syntax      " 設置語法摺疊
set foldcolumn=0           " 設置摺疊區域的寬度
setlocal foldlevel=1       " 設置摺疊層數為
set foldlevel=100          " 文件打開時不摺疊
set foldclose=all          " 設置為自動關閉摺疊

"====================================================================
" => $VIMFILES
"====================================================================

if has("win32")
   let $VIMFILES = $VIM.'/vimfiles'
else
   let $VIMFILES = $HOME.'/.vim'
endif

"====================================================================
" => load other vim setting
"====================================================================

if has("win32")

endif

source c:\vim\psy_hotkey.vim
source c:\vim\psy_plugin.vim
source c:\vim\psy_win.vim


"====================================================================
" => 
"====================================================================

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction







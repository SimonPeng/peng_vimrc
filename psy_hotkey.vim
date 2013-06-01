
"====================================================================
"  change default vim key setting
"====================================================================

imap jj <esc>
imap <a-c> <esc>
vmap <a-c> <esc>

" replace 'SHIFT+;' (:) with ';'
" ; -> :
nnoremap ; :

"-------------------------------------------------
" windows default hot key
nnoremap <c-s> :w<cr>

"-------------------------------------------------
inoremap <a-n> <c-n>
inoremap <a-p> <c-p>

"====================================================================
" remap <leader> from "\" to "," for easy usage
"====================================================================
" let mapleader = "," "can't work well become it has <space>
let mapleader=","
let g:mapleader=","

"====================================================================
" copy and paste hot key
"====================================================================
" show registers information
nnoremap <a-y> :reg<cr>

source c:\vim\psy_reg.vim

set grepprg=grep\ -nH\ $*
"set grepprg=grep\ -nH\ $*\ * 

"set grepprg=C:/MinGW/msys/1.0/bin/egrep\ -nR\ $*\ *
"The '$' is where your expression will go, 
"the '' at the end means every file type. 
"Grep is fast enough or my codebase is small enough 
"that I don't care to limit the file types. 
"Using the -n and -R flags will make it return results pretty much like vimgrep 
"(obviously the patter expressions will be different).

" in command line, 
" EX: grep -i word *.c *.h

"====================================================================
" grep search result to quickfix
"====================================================================
let USE_INTERNAL_GREP=0

if (USE_INTERNAL_GREP == 1)
    " specific files and folder
    "nnoremap <a-g>   :vimgrep /<c-r>=expand("<cword>")<cr>/j *.{c,h} ..\last1\* subfolder\*.{c,h}<cr> :copen<cr>

    "----------------------------
    " search in current folder recursively
    au BufRead,BufNewFile *.* noremap <a-f> :vimgrep! /<c-r>=expand("<cword>")<cr>/j %<cr> :copen<cr>
    au BufRead,BufNewFile *.c,*.h noremap <a-f> :vimgrep! /<c-r>=expand("<cword>")<cr>/j *.{c,h} **\*.{c,h}<cr> :copen<cr>

else 
    nnoremap <a-f> :Grep<cr><cr><cr>
    " command line ---> :grep memset %
    "command! -nargs=+ RGrep execute 'silent grep! <args>' | cwindow | redraw!
endif


"----------------------------
" search in current file
nnoremap <a-g> :vimgrep! /<c-r>=expand("<cword>")<cr>/j %<cr> :copen<cr>

nnoremap <a-e> :cnext<cr>
nnoremap <a-r> :cprev<cr>
nnoremap <a-z> :call QFSwitch()<cr>
"----------------------------
function! QFSwitch()
	redir => ls_output
	execute ':silent! ls'
	redir END

	let exists = match(ls_output, "[Quickfix List")
	if exists == -1
		execute ':copen'
	else
		execute ':cclose'
	endif
endfunction

"====================================================================
" remap hotkey for command mode
cnoremap <a-a> <home>
cnoremap <a-e> <end>

cnoremap <a-h> <left>
cnoremap <a-j> <down>
cnoremap <a-k> <up>
cnoremap <a-l> <right>

cnoremap <a-d> <del>
cnoremap <a-x> <backspace>
cnoremap <a-f> <s-right>
cnoremap <a-b> <s-left>

"====================================================================
" remap hotkey for insert mode
inoremap <a-a> <home>
inoremap <a-e> <end>

inoremap <a-h> <left>
inoremap <a-j> <down>
inoremap <a-k> <up>
inoremap <a-l> <right>

inoremap <a-d> <del>
inoremap <a-x> <backspace>
inoremap <a-f> <s-right>
inoremap <a-b> <s-left>

"====================================================================
" in normal mode and visual select mode,
" use Tab and shift-tab to indent
nnoremap <tab>   V>
nnoremap <s-tab> V<

vnoremap <tab>   >gv
vnoremap <s-tab> <gv

"====================================================================
" nerdtree
nnoremap <a-q> :TlistClose<cr> :cclose<cr> :NERDTreeToggle<cr>  <c-w><c-w>

"====================================================================
" tlist
nnoremap <a-w> :NERDTreeClose<cr> :cclose<cr> :TlistToggle<cr>  <c-w><c-w>

"====================================================================
" quick jump 
nnoremap <a-j> <c-f>
nnoremap <a-k> <c-b>

vnoremap <a-j> <c-f>
vnoremap <a-k> <c-b>

"====================================================================
" buffer 
nnoremap <a-b> :buffers<cr>
nnoremap <a-u> :bnext<cr>
nnoremap <a-i> :bprev<cr>

"====================================================================
" working with jumplist  
" press Ctrl-O to jump back to the previous (older) location
" press Ctrl-I (same as Tab) to jump forward to the next (newer) location. 
nnoremap <a-t> <c-t>
nnoremap <a-a> <c-]>
nnoremap <a-s> <c-o>
nnoremap <a-d> <c-i>

"====================================================================
" split window  
"====================================================================
"" switch windows
nnoremap <a-x> 	 <c-w><c-w>

"====================================================================
nnoremap <a-c> :call BufferDelete()<cr><cr>
"-------------------------------------------------
function! BufferDelete()
    if &modified
        echohl ErrorMsg
        echomsg "No write since last change. Not closing buffer."
        echohl NONE
    else
        let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

        if s:total_nr_buffers == 1
            bdelete
            echo "Buffer deleted. Created new buffer."
        else
            bprevious
            bdelete #
            echo "Buffer deleted."
        endif
    endif
endfunction

"====================================================================
" do not show search highlight
"nnoremap <a-v> 	:noh<cr> 
nnoremap <a-v> 	:set hls!<cr>

"====================================================================
" switch line number
nnoremap <a-n> :call ToggleLineNumber()<cr>
"-------------------------------------------------
function! ToggleLineNumber()
	if &nu == 1
		set rnu
	else
		set nu
	endif
endfunction

"====================================================================
"
"  F2 ~ F12 
"
"====================================================================
"
"====================================================================
" tlist
" generate tags file, it can append after wdk symbol tag file
"Ex:
"ctags    -R --c++-kinds=+p --fields=+iaS --extra=+q -f "tags"  "C:\WINDDK\3790.1184\inc\wnet"  
"ctags -a -R --c++-kinds=+p --fields=+iaS --extra=+q -f "tags"  "C:\WINDDK\3790.1184\inc\ddk\wnet" 
"ctags -a -R --c++-kinds=+p --fields=+iaS --extra=+q
"
nnoremap <F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr> 
nnoremap <F3> :call AppendWdkSymbol2Tags()<cr> 
nnoremap <F4> :call AppendLinuxSymbol2Tags()<cr> 

"-------------------------------------------------
function! AppendWdkSymbol2Tags()
	execute ':!copy D:\batch\tag_wdk_7600\tags .\tags'
	execute ':!ctags -a -R --c++-kinds=+p --fields=+iaS --extra=+q' 
endfunction
"-------------------------------------------------
function! AppendLinuxSymbol2Tags()
	execute ':!copy D:\batch\tag_linux3.5\tags .\tags'
	execute ':!ctags -a -R --c++-kinds=+p --fields=+iaS --extra=+q' 
endfunction

"====================================================================
" grep find result to quickfix
"====================================================================
"nnoremap <F5> :cnext<cr>
"nnoremap <F6> :cprev<cr>

"====================================================================
" complier wdk driver 
"====================================================================
let PSY_COMPLIER_MODE=0

if (PSY_COMPLIER_MODE == 0)  
	" complier and make WDK
	nnoremap <F7>  :!D:\batch\MakeDrv_x86.bat<cr>
	nnoremap <F8>  :!D:\batch\MakeDrv_amd64.bat<cr>
else

endif

"====================================================================
"nnoremap <F9>  :bnext<cr>
"nnoremap <F10> :bprev<cr>

"====================================================================
" find definition and return
"====================================================================
" working with tags stack 
"nnoremap <F11>   <c-t>
"nnoremap <F12>   <c-]>

nnoremap <F12> :set paste!<CR>
"nnoremap <F12> :set nopaste<CR>

" must in insert mode
"set pastetoggle=<F12>

"====================================================================
"
" auto parentheses
"
"====================================================================
" use $1 to input ()
vnoremap $1 <esc>`<i(<esc>`>a)<esc>
" use $1 to input []
vnoremap $2 <esc>`<i[<esc>`>a]<esc>
" use $3 to input {}
vnoremap $3 <esc>`<i{<esc>`>a}<esc>
" use $4 to input ""
vnoremap $4 <esc>`<i"<esc>`>a"<esc>
" use $5 to input ''
vnoremap $5 <esc>`<i'<esc>`>a'<esc>

inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 ""<esc>i
inoremap $5 ''<esc>i

"====================================================================
" switch to current directory
nnoremap <leader>cd :cd %:p:h<cr>

"====================================================================
"
" abbreviations
"
"====================================================================
:ab #b /****************************************
:ab #e ^V^H*****************************************/

"====================================================================
"
" can use snipMate plugin to replace
"
"====================================================================
inoremap #t0 TRACE("");<left><left><left>
inoremap #t1 TRACE1("");<left><left><left>
inoremap #t2 TRACE2("");<left><left><left>
inoremap #tx TRACEX(", XXXXXXXXXXXXXXX")<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap #tf TRACE("%s ===>", __FUNCTION__);

"====================================================================
" for custom search hotkey
"====================================================================
" vimgrep in current file
cnoremap gf vimgrep //j %<left><left><left><left>

" vimgrep in current directory
"cnoremap gd vimgrep //j *.c *.h<left><left><left><left><left><left><left><left><left><left>
cnoremap gd vimgrep //j *.{c,cpp,h,hpp}<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

"====================================================================
function! RangeSearch(direction)
  call inputsave()
  let g:srchstr = input(a:direction)
  call inputrestore()
  if strlen(g:srchstr) > 0
    let g:srchstr = g:srchstr.
          \ '\%>'.(line("'<")-1).'l'.
          \ '\%<'.(line("'>")+1).'l'
  else
    let g:srchstr = ''
  endif
endfunction

vnoremap <silent> / :<C-U>call RangeSearch('/')<CR>:if strlen(g:srchstr) > 0\|exec '/'.g:srchstr\|endif<CR>
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>:if strlen(g:srchstr) > 0\|exec '?'.g:srchstr\|endif<CR>

" http://vim.wikia.com/wiki/Search_only_over_a_visual_range
"A much simpler version is to: make your visual selection and then hit <ESC> (returning to normal mode). 
"Then prepend \%V to your search, like this:
":/\%Vpattern
"
"Then press enter. If you still want to see your visual selection while you are "n/N"ing 
"to skip around to the other matches, then just type gv to reselect the last visual selection.


"====================================================================
"====================================================================
"====================================================================
"====================================================================
"====================================================================
"====================================================================
"

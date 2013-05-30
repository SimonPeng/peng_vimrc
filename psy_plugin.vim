
"====================================================================
" plugin setting 
"====================================================================

"==========================================================
" ctags
"==========================================================
"let Tlist_Ctags_Cmd = 'C:\ctags.exe'

set tags=tags;


"==========================================================
" taglist
"==========================================================
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 0 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 0 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 40



"==========================================================
" nerdtree
"==========================================================

let NERDTreeWinSize = 40

"==========================================================
" grep
"==========================================================
let Grep_Path  = 'C:\vim\tool\GnuWin32\bin\grep.exe'
let Fgrep_Path = 'C:\vim\tool\GnuWin32\bin\fgrep.exe'
let Egrep_Path = 'C:\vim\tool\GnuWin32\bin\egrep.exe'
let Agrep_Path = 'C:\vim\tool\GnuWin32\bin\agrep.exe'
let Grep_Find_Path = 'C:\vim\tool\GnuWin32\bin\find.exe'
let Grep_Xargs_Path = 'C:\vim\tool\GnuWin32\bin\xargs.exe'
let Grep_Default_Filelist = '*.[chS]'
let Grep_Default_Filelist = '*.c *.cpp *.h *.hpp'

" 不分大小寫
"let Grep_Default_Options = '-i'

" 在搜索的時候忽略大小寫
" :Grep -i {word}
" :GrepBuffer -i {word}

"==========================================================
" supertab
"==========================================================
"let g:SuperTabDefaultCompletionType="context"


"==========================================================
" bufexplorer
"==========================================================
let g:bufExplorerDefaultHelp=1 " Do not show default help. 
let g:bufExplorerShowRelativePath=1 " Show relative paths. 
let g:bufExplorerSortBy='mru' " Sort by most recently used. 
let g:bufExplorerSplitRight=0 " Split left. 
let g:bufExplorerSplitVertical=0 " Split vertically. 
let g:bufExplorerSplitVertSize = 30 " Split width 
let g:bufExplorerUseCurrentWindow=1 " Open in new window. 
autocmd BufWinEnter \[Buf\ List\] setl nonumber



"==========================================================
" easymotion 
"==========================================================
" The default leader has been changed to <Leader><Leader> to avoid conflicts 
" with other plugins you may have installed. This can easily be changed back
" to pre-1.3 behavior by rebinding the leader in your vimrc:

"let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_leader_key = ','

" to trigger the word motion w. When the motion is triggered
"<Leader><Leader>w  

" search backward
"<Leader><Leader>b  

" Similarly, if you're looking for an "o", you can use the f motion. "
" Type <Leader><Leader>fo, and all "o" characters are highlighted:
" search forward character
"<Leader><Leader>f

" search backward (and such upward!)
"<Leader><Leader>F 

" search start of line
"<Leader><Leader>j 


"==========================================================
" yankring
"==========================================================
" Some settings to try to get yank ring to not mess with default vim
" functionality so much.
let g:yankring_manage_numbered_reg = 0
let g:yankring_clipboard_monitor = 0
let g:yankring_paste_check_default_buffer = 0

" Don't let yankring use f, t, /. It doesn't record them properly in macros
" and that's my most common use. Yankring also blocks macros of macros (it
" prompts for the macro register), but removing @ doesn't fix that :(
let g:yankring_zap_keys = ''

" Disable yankring for regular p/P. This preserves vim's normal behavior, but
" I can still use C-p/C-n to cycle through yankring.
let g:yankring_paste_n_bkey = ''
let g:yankring_paste_n_akey = ''
let g:yankring_paste_v_key = ''


"==========================================================
" txtbrowser
"==========================================================
"au BufEnter *.txt setlocal ft=txt
"au BufRead,BufNewFile *.txt setlocal ft=txt
au BufEnter *.txt setlocal ft=txt

"==========================================================
" hexHighlight
"==========================================================
"The default keymapping to toggle hex code highlighting is 
"<Leader>F2, and the default <Leader> bind is "\", 
"so \F2 should work by default. 
"The toggle can be called manually by :call HexHighlight()

"==========================================================
" tagbar
"==========================================================
let g:tagbar_sort=0
let g:tagbar_left=1

"==========================================================
" ctrlp
"==========================================================
let g:ctrlp_map = '<c-o>'

"==========================================================
"
"==========================================================

"==========================================================
"
"==========================================================




"====================================================================
" plugin setting 
"====================================================================

"==========================================================
" ctags
"==========================================================
"let Tlist_Ctags_Cmd = 'C:\ctags.exe'
"set tags=tags;\
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
let Grep_Path  = 'C:\vim\tool\grep.exe'
let Fgrep_Path = 'C:\vim\tool\fgrep.exe'
let Egrep_Path = 'C:\vim\tool\egrep.exe'
let Agrep_Path = 'C:\vim\tool\agrep.exe'
let Grep_Find_Path = 'C:\vim\tool\find.exe'
let Grep_Xargs_Path = 'C:\vim\tool\xargs.exe'
"let Grep_Default_Filelist = '*.[chS]'
let Grep_Default_Filelist = '*.c *.cpp *.h'

" ignore case
"let Grep_Default_Options = '-i'

" ignore case
" :Grep -i {word}
" :GrepBuffer -i {word}


"==========================================================
" supertab
"==========================================================
"let g:SuperTabDefaultCompletionType="context"


"==========================================================
" txtbrowser
"==========================================================
"au BufEnter *.txt setlocal ft=txt
"au BufRead,BufNewFile *.txt setlocal ft=txt
au BufEnter *.txt setlocal ft=txt


"==========================================================
"==========================================================
"==========================================================
"==========================================================
"==========================================================
"==========================================================
"==========================================================



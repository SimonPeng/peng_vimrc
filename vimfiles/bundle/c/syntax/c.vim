"highlight Functions
"syn match cFuntions display "[a-zA-Z_]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
"
"hi cFuntions guifg=Maroon

"hi Normal guifg=Grey guibg=Black
"hi ErrorMsg guibg=Red guifg=Grey
"hi IncSearch gui=reverse
"hi StatusLine gui=reverse
"hi StatusLineNC gui=reverse
"hi VertSplit gui=reverse
"hi Visual gui=reverse guifg=Grey guibg=Black
"hi VisualNOS gui=underline
"hi DiffText guibg=Red
"hi Cursor guibg=#004080 guifg=NONE
"hi lCursor guibg=Cyan guifg=NONE
"hi Directory guifg=Blue
"hi LineNr guifg=Grey
"hi MoreMsg guifg=Green
"hi NonText guifg=Blue guibg=Black
"hi Question guifg=Green
"hi Search guibg=#888800 guifg=Black
"hi SpecialKey guifg=Blue
"hi Title guifg=Magenta
"hi WarningMsg guifg=Red
"hi WildMenu guibg=Cyan guifg=Black
"hi Folded guibg=Grey guifg=DarkBlue
"hi FoldColumn guibg=Grey guifg=DarkBlue
"hi DiffAdd guibg=LightBlue
"hi DiffChange guibg=LightMagenta
"hi DiffDelete guifg=Blue guibg=LightCyan
"hi Comment guifg=Cyan guibg=Black
"hi Constant guifg=Magenta guibg=Black
"hi PreProc guifg=Blue guibg=Black
"hi Statement gui=NONE guifg=Yellow guibg=Black
"hi Special guifg=Red guibg=Black
"hi Ignore guifg=Grey
"hi Identifier guifg=Yellow guibg=Black
"hi Type gui=NONE guifg=Green guibg=Black



"highlight Comment guifg=#AEAEAE "gray
highlight Comment guifg=#009fa4
highlight Constant guifg=#CAFE1E
highlight Keyword guifg=#FFDE00
highlight String guifg=#00D42D
highlight Type guifg=#84A7C1
highlight Identifier guifg=#00D42D gui=NONE
highlight Function guifg=#FF5600 gui=NONE
highlight PreProc guifg=#FF5600
"highlight clear Search
"highlight Search guibg=#1C3B79
highlight myMACRO guifg=#E18942

"====================================================
" Highlight All Function
" ===================================================
"syn match cMyMacro display "[A-Z_][A-Z0-9_][A-Z0-9_][A-Z0-9_]*"
syn match cMyMacro display "\<[A-Z_][A-Z0-9_]*[A-Z0-9_]\>"
hi def link cMyMacro myMACRO

syn match cFuntions display  "\<[a-zA-Z_][a-zA-Z0-9_]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
"syn match cFunction display "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
"syn match cFunction display "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"hi cFuntions guifg=Maroon
hi def link cFuntions PreProc 

"===================================================
" Highlight All Class Name
" ==================================================
"syn match cClassName "\<[a-zA-Z_][a-zA-Z_0-9]*\>*\:"me=e-1
"hi cClassName guifg=yellow

"====================================================
" Highlight All Math Operator
" ===================================================
" c math operators
"syn match cMathOperator display "[-+\*\%=]"
syn match cMathOperator display "+"
syn match cMathOperator display "-"

" c pointer operators
syn match cPointerOperator display "->\|\.\|\:\:"
syn match cPointerOperator display "\*"

" c logical operators - boolean results
syn match cLogicalOperator display "[!<>]=\="
syn match cLogicalOperator display "=="
" More c logical operators - highlight in preference to binary
syn match cLogicalOperator display "&&\|||"
syn match cLogicalOperatorError display "\(&&\|||\)="

" c bit operators
syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
syn match cBinaryOperator display "\~"
syn match cBinaryOperatorError display "\~="



" more c priority operators -highlight in preference to binary
"syn match cPriorityOpreator display "(\|)\|\[\|\]\|{\|}"
"hi cPriorityOpreator guifg=Maroon

hi def link cMathOperator SpecialKey

hi cPointerOperator guifg=red
hi def link cPointerOperatorError cError 

"hi def link cLogicalOperator Macro 
hi cLogicalOperator guifg = #f799af 
hi def link cLogicalOperatorError cError

hi def link cBinaryOperator Title
hi def link cBinaryOperatorError cError

"====================================================================
" keyword
syn keyword cMyDefineType u8 u16 u32
hi def link cMyDefineType cType

syn match cComma display "\,"
hi def link cComma SpecialKey


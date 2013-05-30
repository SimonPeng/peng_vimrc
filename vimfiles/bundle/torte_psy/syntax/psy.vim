"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match	cNumbers	display transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctalError,cOctal
" Same, but without octal error (for comments)
syn match	cNumbersCom	display contained transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctal
syn match	cNumber		display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
"hex number
syn match	cNumber		display contained "0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"
" Flag the first zero of an octal number as something special
syn match	cOctal		display contained "0\o\+\(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero
syn match	cOctalZero	display contained "\<0"
syn match	cFloat		display contained "\d\+f"
"floating point number, with dot, optional exponent
syn match	cFloat		display contained "\d\+\.\d*\(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match	cFloat		display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match	cFloat		display contained "\d\+e[-+]\=\d\+[fl]\=\>"


hi def link cNumber		Number
"hi def link cOctal		Number


"highlight Comment guifg=#AEAEAE "gray
highlight Comment guifg=#009fa4
highlight Constant guifg=#CAFE1E
highlight Keyword guifg=#FFDE00
highlight String guifg=#00D42D
highlight Type guifg=#84A7C1
highlight Identifier guifg=#00D42D gui=NONE
highlight Function guifg=#FF5600 gui=NONE
highlight PreProc guifg=#FF5600


highlight myMACRO guifg=#E18942
"syn match cMyMacro display "[A-Z_][A-Z0-9_][A-Z0-9_][A-Z0-9_]*"
syn match cMyMacro display "\<[A-Z_][A-Z0-9_]*[A-Z0-9_]\>"
"hi def link cMyMacro myMACRO


syn region	cString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,@Spell
hi def link cString		String


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



let b:current_syntax = "psy"


" vim: ts=4

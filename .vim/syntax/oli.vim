
" Syntax pentru limbajul OLI

if exists("b:current_syntax")
  finish
endif

" -------------------------
" Comentarii
" -------------------------
syntax match oliComment "#.*$"
highlight link oliComment Comment

" -------------------------
" Variabile (prefix $)
" -------------------------
syntax match oliVar "\$[A-Za-z0-9_]*"
highlight link oliVar Identifier

" -------------------------
" Numere
" -------------------------
syntax match oliNumber "\<[0-9]\+\>"
highlight link oliNumber Number

" -------------------------
" Operators
" -------------------------
syntax match oliOperator "[-!()*,/;?[\]{}+<>]"
syntax match oliOperator "==\|!=\|<=\|>=\|&&\|||"
highlight link oliOperator Operator

" -------------------------
" Keywords1
" -------------------------
syntax keyword oliKw1 then do as to return break continue
highlight link oliKw1 Keyword

" Keywords2
syntax keyword oliKw2 set plugin config echo max_iterations
highlight link oliKw2 Keyword

" Keywords3 (funcții matematice)
syntax keyword oliKw3 RANDOM SIN COS TAN SQRT POW ABS MIN MAX ROUND PI E TIME TICKS SLEEP CHR CHAR ASC INT STR
highlight link oliKw3 Function

" Keywords4 (funcții sistem)
syntax keyword oliKw4 CON_SCREEN CON_CLS CURSOR DB_INIT DB_PUT DB_PRESENT KEY_STATE GET_KEY PUSH
highlight link oliKw4 Function

" -------------------------
" Structuri (folding)
" -------------------------
syntax keyword oliBlockStart func if while for cycle
syntax keyword oliBlockMiddle else
syntax keyword oliBlockEnd endfunc endif endwhile endfor endcycle

highlight link oliBlockStart Statement
highlight link oliBlockMiddle Statement
highlight link oliBlockEnd Statement

" -------------------------
" Strings
" -------------------------
syntax region oliString start=+'+ end=+'+
highlight link oliString String

let b:current_syntax = "oli"

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "potion"

syntax keyword potionKeyword to times loop while if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string
syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/


syntax match potionComment '\v#.*$'
syntax match potionNumber '\v<\d+\.?>'
syntax match potionNumber '\v<0[xX]\x+>'
syntax match potionNumber '\v<0\o+>'
syntax match potionNumber '\v<\d\.?\d*e[-\+]\d+>'



syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionNumber Number
highlight link potionString String

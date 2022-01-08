let g:airline#themes#custom#palette = {}
let s:gui00 = "#090300"
let s:gui01 = "#3a3432"
let s:gui02 = "#4a4543"
let s:gui03 = "#5c5855"
let s:gui04 = "#807d7c"
let s:gui05 = "#a5a2a2"
let s:gui06 = "#d6d5d4"
let s:gui07 = "#f7f7f7"
let s:gui08 = "#db2d20"
let s:gui09 = "#e8bbd0"
let s:gui0A = "#fded02"
let s:gui0B = "#01a252"
let s:gui0C = "#b5e4f4"
let s:gui0D = "#01a0e4"
let s:gui0E = "#a16a94"
let s:gui0F = "#cdab53"

let s:cterm00 = 0
let s:cterm01 = 1
let s:cterm02 = 2
let s:cterm03 = 3
let s:cterm04 = 4
let s:cterm05 = 5
let s:cterm06 = 6
let s:cterm07 = 7
let s:cterm08 = 8
let s:cterm09 = 9
let s:cterm0A = 10
let s:cterm0B = 11
let s:cterm0C = 12
let s:cterm0D = 13
let s:cterm0E = 14
let s:cterm0F = 15
let s:cterm10 = ""

"black       #232627
"maroon      #c0392b
"green       #11d116
"olive       #f67400
"navy        #16a085
"purple      #8e44ad
"teal        #1abc9c
"silver      #7f8c8d
"grey        #fcfcfc
"red         #ed1515
"lime        #1cdc9a
"yellow      #fdbc4b
"blue        #1d99f3
"fuchsia     #9b59b6
"aqua        #3daee9
"white       #ffffff
"transparent #

let s:N1   = [ s:gui01, s:gui0B, s:cterm0F, s:cterm00 ]
let s:N2   = [ s:gui06, s:gui02, s:cterm00, s:cterm04 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm10 ]
let g:airline#themes#custom#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0D, s:cterm0F, s:cterm00 ]
let s:I2   = [ s:gui06, s:gui02, s:cterm00, s:cterm04 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm10 ]
let g:airline#themes#custom#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm0F, s:cterm00 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm00, s:cterm04 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm10 ]
let g:airline#themes#custom#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm0F, s:cterm00 ]
let s:V2   = [ s:gui06, s:gui02, s:cterm00, s:cterm04 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm0F, s:cterm10 ]
let g:airline#themes#custom#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui01, s:cterm0F, s:cterm00 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm00, s:cterm04 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm0F, s:cterm10 ]
let g:airline#themes#custom#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#custom#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm0F, s:cterm00, '' ],
      \ [ s:gui07, s:gui04, s:cterm00, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm0F, s:cterm10, 'bold' ])


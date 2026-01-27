" Name:         monodraw-dark (Extended Edition)
" Description:  A high-precision 8-layer luminance engineering theme
" Maintainer:   Lee Yunjin
" Logic:        Optimized for cognitive parsing and astigmatism correction

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monodraw-dark"

" =====================================================================
" PALETTE DEFINITIONS (For Reference)
" =====================================================================
" Bg: #0b0d10 (Deep Charcoal)
" Fg: #cfd3d6 (Neutral Silver)
" UI: #161a20 (Panel), #2c323c (Selection), #3b424c (Subtle)
" Accents:
"   Red:     #e06c75 (Error/Delete)
"   Green:   #98c379 (String/Add - Adjusted for this theme)
"   Yellow:  #e5c07b (Type/Warning)
"   Blue:    #61afef (Function/Info)
"   Magenta: #c678dd (Keyword)
"   Cyan:    #56b6c2 (PreProc)
"   Orange:  #d19a66 (Todo/Special)

" ---------------------------------------------------------------------
" 1. BASE CALIBRATION
" ---------------------------------------------------------------------
hi Normal       guifg=#cfd3d6 guibg=#0b0d10 gui=NONE
hi LineNr       guifg=#3b424c guibg=#0b0d10 gui=NONE
hi CursorLineNr guifg=#abb2bf guibg=#161a20 gui=bold
hi CursorLine   guibg=#161a20 gui=NONE
hi CursorColumn guibg=#161a20 gui=NONE
hi ColorColumn  guibg=#161a20 gui=NONE
hi Visual       guibg=#2c323c gui=NONE
hi VisualNOS    guibg=#2c323c gui=NONE
hi VertSplit    guifg=#161a20 guibg=#161a20 gui=NONE
hi SignColumn   guibg=#0b0d10 gui=NONE

" ---------------------------------------------------------------------
" 2. COGNITIVE LAYERING (Syntax Highlighting)
" ---------------------------------------------------------------------

" LAYER 1: De-emphasized Metadata
hi Comment      guifg=#5c6670 gui=italic
hi SpecialComment guifg=#5c6670 gui=italic

" LAYER 2: Constants & Data (Earth)
hi Constant     guifg=#84a0c6 gui=NONE
hi String       guifg=#8da1b9 gui=NONE
hi Character    guifg=#8da1b9 gui=NONE
hi Number       guifg=#84a0c6 gui=bold
hi Boolean      guifg=#84a0c6 gui=bold
hi Float        guifg=#84a0c6 gui=bold

" LAYER 3: Structural Logic (Metal)
hi Operator     guifg=#9fb0c8 gui=NONE
hi Delimiter    guifg=#7a828a gui=NONE

" LAYER 4: Control Flow & Keywords (Fire)
hi Statement    guifg=#c678dd gui=bold
hi Keyword      guifg=#c678dd gui=bold
hi Conditional  guifg=#c678dd gui=NONE
hi Repeat       guifg=#c678dd gui=NONE
hi Label        guifg=#c678dd gui=NONE
hi Exception    guifg=#c678dd gui=NONE

" LAYER 5: Execution Units (Wood)
hi Function     guifg=#61afef gui=NONE
hi Identifier   guifg=#cfd3d6 gui=NONE

" LAYER 6: Declarations & Types
hi Type         guifg=#e5c07b gui=NONE
hi StorageClass guifg=#e5c07b gui=NONE
hi Structure    guifg=#e5c07b gui=NONE
hi Typedef      guifg=#e5c07b gui=NONE

" LAYER 7: System & Preprocessors
hi PreProc      guifg=#56b6c2 gui=NONE
hi Include      guifg=#56b6c2 gui=NONE
hi Define       guifg=#56b6c2 gui=NONE
hi Macro        guifg=#56b6c2 gui=NONE
hi PreCondit    guifg=#56b6c2 gui=NONE

" LAYER 8: Critical Alerts & Specials
hi Error        guifg=#e06c75 guibg=NONE    gui=undercurl
hi Todo         guifg=#d19a66 guibg=NONE    gui=bold
hi Special      guifg=#d19a66 gui=NONE
hi SpecialChar  guifg=#d19a66 gui=NONE
hi Tag          guifg=#d19a66 gui=NONE
hi Debug        guifg=#d19a66 gui=NONE
hi Underlined   guifg=NONE    gui=underline
hi Ignore       guifg=#3b424c gui=NONE

" ---------------------------------------------------------------------
" 3. UI ELEMENTS & HUD
" ---------------------------------------------------------------------
" Status Line: Clear separation without high contrast glare
hi StatusLine   guifg=#cfd3d6 guibg=#2c323c gui=NONE
hi StatusLineNC guifg=#5c6670 guibg=#161a20 gui=NONE

" Tabline: File navigation
hi TabLine      guifg=#5c6670 guibg=#161a20 gui=NONE
hi TabLineFill  guifg=#161a20 guibg=#161a20 gui=NONE
hi TabLineSel   guifg=#cfd3d6 guibg=#2c323c gui=NONE

" Pmenu (Popup Menu / Autocomplete)
hi Pmenu        guifg=#cfd3d6 guibg=#161a20 gui=NONE
hi PmenuSel     guifg=#ffffff guibg=#4b5263 gui=NONE
hi PmenuSbar    guibg=#21252b gui=NONE
hi PmenuThumb   guibg=#5c6670 gui=NONE

" Search & Matching
hi Search       guifg=#0b0d10 guibg=#e5c07b gui=NONE
hi IncSearch    guifg=#0b0d10 guibg=#98c379 gui=NONE
hi MatchParen   guifg=#c678dd guibg=#2c323c gui=bold

" Folds & Invisible Characters
hi Folded       guifg=#5c6670 guibg=#161a20 gui=italic
hi FoldColumn   guifg=#3b424c guibg=#0b0d10 gui=NONE
hi NonText      guifg=#3b424c gui=NONE
hi SpecialKey   guifg=#3b424c gui=NONE
hi Whitespace   guifg=#3b424c gui=NONE

" Messages
hi ModeMsg      guifg=#98c379 gui=bold
hi MoreMsg      guifg=#98c379 gui=NONE
hi Question     guifg=#61afef gui=NONE
hi WarningMsg   guifg=#e5c07b gui=bold
hi ErrorMsg     guifg=#e06c75 gui=bold
hi Title        guifg=#61afef gui=bold
hi Directory    guifg=#61afef gui=NONE

" ---------------------------------------------------------------------
" 4. DIFF & GIT (Softened for Astigmatism)
" ---------------------------------------------------------------------
" Adjusted to avoid neon clashes on dark backgrounds
hi DiffAdd      guifg=#98c379 guibg=#1e2418 gui=NONE
hi DiffChange   guifg=#e5c07b guibg=#262010 gui=NONE
hi DiffDelete   guifg=#e06c75 guibg=#261515 gui=NONE
hi DiffText     guifg=#cfd3d6 guibg=#3b424c gui=NONE

" GitGutter (Plugin Support)
hi GitGutterAdd    guifg=#98c379 guibg=#0b0d10
hi GitGutterChange guifg=#e5c07b guibg=#0b0d10
hi GitGutterDelete guifg=#e06c75 guibg=#0b0d10

" ---------------------------------------------------------------------
" 5. SPELL CHECKING
" ---------------------------------------------------------------------
hi SpellBad     guisp=#e06c75 gui=undercurl
hi SpellCap     guisp=#e5c07b gui=undercurl
hi SpellRare    guisp=#61afef gui=undercurl
hi SpellLocal   guisp=#56b6c2 gui=undercurl

" ---------------------------------------------------------------------
" 6. HTML/XML/MARKDOWN SPECIFICS
" ---------------------------------------------------------------------
hi link htmlTag         Type
hi link htmlEndTag      Type
hi link htmlTagName     Type
hi link htmlArg         Constant
hi link xmlTag          Type
hi link xmlEndTag       Type
hi link xmlTagName      Type
hi link markdownH1      Title
hi link markdownH2      Title
hi link markdownH3      Title
hi link markdownLinkText String
hi link markdownUrl     Underlined

" Name:         monodraw-light (Extended Edition)
" Description:  8-Layer luminance engineering for light-mode environments
" Maintainer:   Lee Yunjin
" Logic:        Utilizing pupillary constriction for physical focus sharpening

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monodraw-light"

" =====================================================================
" PALETTE DEFINITIONS (For Reference)
" =====================================================================
" Bg: #f4f4f4 (Paper Gray)
" Fg: #161616 (Deep Ink)
" UI: #e8e8e8 (Panel), #dde1e6 (Selection), #a8a8a8 (Subtle)
" Accents:
"   Red:     #da1e28 (Error/Delete)
"   Teal:    #005d5d (String/Add)
"   Ochre:   #b28600 (Number/Warning)
"   Blue:    #0f62fe (Function/Search)
"   D.Blue:  #0043ce (Type)
"   Magenta: #d12771 (Keyword)
"   Purple:  #8a3ffc (Todo/Special)

" ---------------------------------------------------------------------
" 1. OPTICAL CALIBRATION (Base)
" ---------------------------------------------------------------------
hi Normal       guifg=#161616 guibg=#f4f4f4 gui=NONE
hi LineNr       guifg=#a8a8a8 guibg=#f4f4f4 gui=NONE
hi CursorLineNr guifg=#161616 guibg=#e8e8e8 gui=bold
hi CursorLine   guibg=#e8e8e8 gui=NONE
hi CursorColumn guibg=#e8e8e8 gui=NONE
hi ColorColumn  guibg=#e8e8e8 gui=NONE
hi Visual       guibg=#dde1e6 gui=NONE
hi VisualNOS    guibg=#dde1e6 gui=NONE
hi VertSplit    guifg=#e8e8e8 guibg=#e8e8e8 gui=NONE
hi SignColumn   guibg=#f4f4f4 gui=NONE

" ---------------------------------------------------------------------
" 2. 8-LAYER COGNITIVE HIERARCHY (Syntax)
" ---------------------------------------------------------------------

" LAYER 1: Secondary Metadata
hi Comment      guifg=#6f6f6f gui=italic
hi SpecialComment guifg=#6f6f6f gui=italic

" LAYER 2: Constants & Data (Earth)
hi Constant     guifg=#b28600 gui=NONE
hi String       guifg=#005d5d gui=NONE
hi Character    guifg=#005d5d gui=NONE
hi Number       guifg=#b28600 gui=bold
hi Boolean      guifg=#b28600 gui=bold
hi Float        guifg=#b28600 gui=bold

" LAYER 3: Structural Scaffold (Metal)
hi Operator     guifg=#393939 gui=NONE
hi Delimiter    guifg=#525252 gui=NONE

" LAYER 4: Control Flow & Keywords (Fire)
hi Statement    guifg=#d12771 gui=bold
hi Keyword      guifg=#d12771 gui=bold
hi Conditional  guifg=#d12771 gui=NONE
hi Repeat       guifg=#d12771 gui=NONE
hi Label        guifg=#d12771 gui=NONE
hi Exception    guifg=#d12771 gui=NONE

" LAYER 5: Execution & Functions (Wood)
hi Function     guifg=#0f62fe gui=NONE
hi Identifier   guifg=#161616 gui=NONE

" LAYER 6: Declarations & Types
hi Type         guifg=#0043ce gui=NONE
hi StorageClass guifg=#0043ce gui=NONE
hi Structure    guifg=#0043ce gui=NONE
hi Typedef      guifg=#0043ce gui=NONE

" LAYER 7: System & Macros
hi PreProc      guifg=#0072c3 gui=NONE
hi Include      guifg=#0072c3 gui=NONE
hi Define       guifg=#0072c3 gui=NONE
hi Macro        guifg=#0072c3 gui=NONE
hi PreCondit    guifg=#0072c3 gui=NONE

" LAYER 8: Critical Alerts & Specials
hi Error        guifg=#da1e28 guibg=NONE    gui=undercurl
hi Todo         guifg=#8a3ffc guibg=NONE    gui=bold
hi Special      guifg=#8a3ffc gui=NONE
hi SpecialChar  guifg=#8a3ffc gui=NONE
hi Tag          guifg=#8a3ffc gui=NONE
hi Debug        guifg=#8a3ffc gui=NONE
hi Underlined   guifg=NONE    gui=underline
hi Ignore       guifg=#a8a8a8 gui=NONE

" ---------------------------------------------------------------------
" 3. UI ELEMENTS & HUD
" ---------------------------------------------------------------------
" Status Line: High contrast dark bar for anchoring the light theme
hi StatusLine   guifg=#f4f4f4 guibg=#393939 gui=NONE
hi StatusLineNC guifg=#6f6f6f guibg=#e8e8e8 gui=NONE

" Tabline
hi TabLine      guifg=#6f6f6f guibg=#e8e8e8 gui=NONE
hi TabLineFill  guifg=#e8e8e8 guibg=#e8e8e8 gui=NONE
hi TabLineSel   guifg=#f4f4f4 guibg=#393939 gui=NONE

" Pmenu (Popup Menu / Autocomplete)
hi Pmenu        guifg=#161616 guibg=#e8e8e8 gui=NONE
hi PmenuSel     guifg=#f4f4f4 guibg=#0f62fe gui=NONE
hi PmenuSbar    guibg=#d0d0d0 gui=NONE
hi PmenuThumb   guibg=#6f6f6f gui=NONE

" Search & Matching
hi Search       guifg=#f4f4f4 guibg=#0f62fe gui=NONE
hi IncSearch    guifg=#f4f4f4 guibg=#da1e28 gui=NONE
hi MatchParen   guifg=#d12771 guibg=#dde1e6 gui=bold

" Folds & Invisible Characters
hi Folded       guifg=#6f6f6f guibg=#e8e8e8 gui=italic
hi FoldColumn   guifg=#a8a8a8 guibg=#f4f4f4 gui=NONE
hi NonText      guifg=#a8a8a8 gui=NONE
hi SpecialKey   guifg=#a8a8a8 gui=NONE
hi Whitespace   guifg=#d0d0d0 gui=NONE

" Messages
hi ModeMsg      guifg=#005d5d gui=bold
hi MoreMsg      guifg=#005d5d gui=NONE
hi Question     guifg=#0f62fe gui=NONE
hi WarningMsg   guifg=#b28600 gui=bold
hi ErrorMsg     guifg=#da1e28 gui=bold
hi Title        guifg=#0043ce gui=bold
hi Directory    guifg=#0f62fe gui=NONE

" ---------------------------------------------------------------------
" 4. DIFF & GIT (High-Luminance Calibration)
" ---------------------------------------------------------------------
" Using pastel backgrounds to maintain legibility in light mode
hi DiffAdd      guifg=#005d5d guibg=#defbe6 gui=NONE
hi DiffChange   guifg=#b28600 guibg=#fdf4d8 gui=NONE
hi DiffDelete   guifg=#da1e28 guibg=#fff1f0 gui=NONE
hi DiffText     guifg=#161616 guibg=#f9e2b0 gui=NONE

" GitGutter (Plugin Support)
hi GitGutterAdd    guifg=#005d5d guibg=#f4f4f4
hi GitGutterChange guifg=#b28600 guibg=#f4f4f4
hi GitGutterDelete guifg=#da1e28 guibg=#f4f4f4

" ---------------------------------------------------------------------
" 5. SPELL CHECKING
" ---------------------------------------------------------------------
hi SpellBad     guisp=#da1e28 gui=undercurl
hi SpellCap     guisp=#b28600 gui=undercurl
hi SpellRare    guisp=#0f62fe gui=undercurl
hi SpellLocal   guisp=#005d5d gui=undercurl

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

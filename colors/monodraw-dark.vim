" Name:         monodraw-dark
" Description:  A high-precision 8-layer luminance engineering theme
" Maintainer:   Lee Yunjin
" Logic:        Optimized for cognitive parsing and astigmatism correction

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monodraw-dark"

" ---------------------------------------------------------------------
" BASE CALIBRATION
" ---------------------------------------------------------------------
" Background (#0b0d10): Deep charcoal to prevent 'black smearing' on OLED/LCD.
" Foreground (#cfd3d6): Neutral silver to minimize 'halation' (glow) for astigmatism.
hi Normal       guifg=#cfd3d6 guibg=#0b0d10 gui=NONE
hi LineNr       guifg=#3b424c guibg=#0b0d10 gui=NONE
hi CursorLine   guibg=#161a20 gui=NONE
hi Visual       guibg=#2c323c gui=NONE

" ---------------------------------------------------------------------
" COGNITIVE LAYERING (The 8-Layer Logic)
" ---------------------------------------------------------------------

" LAYER 1: De-emphasized Metadata
" Lower luminance to push comments into the background, reducing noise.
hi Comment      guifg=#5c6670 gui=italic

" LAYER 2: Constants & Data (Earth)
" Distinct frequency for immediate identification of hardcoded values.
hi Constant     guifg=#84a0c6 gui=NONE
hi String       guifg=#8da1b9 gui=NONE
hi Number       guifg=#84a0c6 gui=bold

" LAYER 3: Structural Logic (Metal)
" High priority for operators and delimiters to reveal code architecture.
hi Operator     guifg=#9fb0c8 gui=NONE
hi Delimiter    guifg=#7a828a gui=NONE

" LAYER 4: Control Flow & Keywords (Fire)
" High-response magenta band for rapid tracking of logic branches.
hi Statement    guifg=#c678dd gui=bold
hi Keyword      guifg=#c678dd gui=bold
hi Conditional  guifg=#c678dd gui=NONE
hi Repeat       guifg=#c678dd gui=NONE

" LAYER 5: Execution Units (Wood)
" Cool blue spectrum for functions; high contrast against flow keywords.
hi Function     guifg=#61afef gui=NONE

" LAYER 6: Declarations & Types
" Warm ochre to separate data structures from logic execution.
hi Type         guifg=#e5c07b gui=NONE

" LAYER 7: System & Preprocessors
" Cyan band to distinguish build-time logic from runtime logic.
hi PreProc      guifg=#56b6c2 gui=NONE

" LAYER 8: Critical Alerts
" Maximum energy band for errors to trigger immediate pupillary response.
hi Error        guifg=#e06c75 guibg=NONE    gui=undercurl
hi Todo         guifg=#d19a66 guibg=NONE    gui=bold

" ---------------------------------------------------------------------
" UI MODES
" ---------------------------------------------------------------------
hi Search       guifg=#0b0d10 guibg=#e5c07b gui=NONE
hi Title        guifg=#cfd3d6 gui=bold
hi VertSplit    guifg=#161a20 guibg=#161a20 gui=NONE

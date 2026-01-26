" Name:         monodraw-light
" Description:  8-Layer luminance engineering for light-mode environments
" Logic:        Utilizing pupillary constriction for physical focus sharpening

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "monodraw-light"

" ---------------------------------------------------------------------
" OPTICAL CALIBRATION
" ---------------------------------------------------------------------
" Background (#f4f4f4): A high-luminance 'Paper' gray to trigger pupil constriction.
" Foreground (#161616): 'Deep Ink' for maximum edge definition against the light.
hi Normal       guifg=#161616 guibg=#f4f4f4 gui=NONE
hi LineNr       guifg=#a8a8a8 guibg=#f4f4f4 gui=NONE
hi CursorLine   guibg=#e8e8e8 gui=NONE
hi Visual       guibg=#dde1e6 gui=NONE

" ---------------------------------------------------------------------
" 8-LAYER COGNITIVE HIERARCHY
" ---------------------------------------------------------------------

" LAYER 1: Secondary Metadata
" Softened gray to reduce visual noise from non-functional text.
hi Comment      guifg=#6f6f6f gui=italic

" LAYER 2: Constants & Data (Earth)
" Using deep ochre/teal to provide a clear signal without excessive glare.
hi Constant     guifg=#b28600 gui=NONE
hi String       guifg=#005d5d gui=NONE
hi Number       guifg=#b28600 gui=bold

" LAYER 3: Structural Scaffold (Metal)
" Ensuring operators are distinct from standard text for architectural clarity.
hi Operator     guifg=#393939 gui=NONE
hi Delimiter    guifg=#525252 gui=NONE

" LAYER 4: Control Flow & Keywords (Fire)
" Strong magenta/red band for high-priority logic tracking.
hi Statement    guifg=#d12771 gui=bold
hi Keyword      guifg=#d12771 gui=bold
hi Conditional  guifg=#d12771 gui=NONE
hi Repeat       guifg=#d12771 gui=NONE

" LAYER 5: Execution & Functions (Wood)
" IBM-spec Blue for functions; optimized for quick cognitive retrieval.
hi Function     guifg=#0f62fe gui=NONE

" LAYER 6: Declarations & Types
" Slate gray/blue to denote structural definitions.
hi Type         guifg=#0043ce gui=NONE

" LAYER 7: System & Macros
" Utilizing a deeper cyan for system-level preprocessors.
hi PreProc      guifg=#0072c3 gui=NONE

" LAYER 8: Critical Alerts
" High-energy red for immediate error detection.
hi Error        guifg=#da1e28 guibg=NONE    gui=undercurl
hi Todo         guifg=#8a3ffc guibg=NONE    gui=bold

" ---------------------------------------------------------------------
" UI MODES
" ---------------------------------------------------------------------
hi Search       guifg=#f4f4f4 guibg=#0f62fe gui=NONE
hi Title        guifg=#161616 gui=bold
hi VertSplit    guifg=#e8e8e8 guibg=#e8e8e8 gui=NONE

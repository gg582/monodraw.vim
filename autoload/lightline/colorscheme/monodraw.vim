" Name:         monodraw
" Description:  8-Layer luminance anchor for Lightline.vim
" Logic:        Middle-luminance grays to prevent pupillary shock during mode shifts

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" --- Monodraw Palette Calibration ---
let s:bg      = '#161616' " Dark Charcoal (Gray 100)
let s:fg      = '#cfd3d6' " Silver Foreground
let s:gray_m  = '#525252' " Mid-Gray
let s:gray_d  = '#393939' " Dark-Gray
let s:blue    = '#0f62fe' " Layer 5: Execution Blue
let s:magenta = '#d12771' " Layer 4: Flow Magenta
let s:red     = '#da1e28' " Layer 8: Error Red
let s:white   = '#f4f4f4' " High Luminance White

" --- Normal Mode: Structural Stability ---
let s:p.normal.left    = [ [ s:fg, s:gray_m ], [ s:fg, s:gray_d ] ]
let s:p.normal.middle  = [ [ s:fg, s:bg ] ]
let s:p.normal.right   = [ [ s:fg, s:gray_m ], [ s:fg, s:gray_d ] ]

" --- Insert Mode: High Response (Blue) ---
let s:p.insert.left    = [ [ s:white, s:blue ], [ s:fg, s:gray_d ] ]

" --- Visual Mode: Attention Shift (Magenta) ---
let s:p.visual.left    = [ [ s:white, s:magenta ], [ s:fg, s:gray_d ] ]

" --- Replace Mode: Critical Alert (Red) ---
let s:p.replace.left   = [ [ s:white, s:red ], [ s:fg, s:gray_d ] ]

" --- Inactive: Absolute Noise Reduction ---
let s:p.inactive.left  = [ [ s:gray_d, s:bg ], [ s:gray_d, s:bg ] ]
let s:p.inactive.middle = [ [ s:gray_d, s:bg ] ]
let s:p.inactive.right = [ [ s:gray_d, s:bg ], [ s:gray_d, s:bg ] ]

" --- Tabline ---
let s:p.tabline.left   = [ [ s:fg, s:gray_d ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:fg ] ]
let s:p.tabline.middle = [ [ s:fg, s:bg ] ]
let s:p.tabline.right  = [ [ s:bg, s:fg ] ]

let g:lightline#colorscheme#monodraw#palette = lightline#colorscheme#fill(s:p)

" Name:         monodraw-airline
" Description:  Neutral anchor statusline for monodraw-light/dark
" Logic:        Middle-luminance grays to prevent pupillary shock during mode shifts

let g:airline#themes#monodraw#palette = {}

" ---------------------------------------------------------------------
" COLOR DEFINITIONS (Neutral Gray Scale)
" ---------------------------------------------------------------------
" Neutral Mid-Gray (#525252) / Silver (#cfd3d6) / Dark Charcoal (#161616)
let s:N1 = [ '#cfd3d6' , '#525252' , 250 , 239 ] " Mode (Normal)
let s:N2 = [ '#cfd3d6' , '#393939' , 250 , 237 ] " Info
let s:N3 = [ '#8d8d8d' , '#161616' , 244 , 234 ] " Statusline Base

" ---------------------------------------------------------------------
" NORMAL MODE: Structural Stability
" ---------------------------------------------------------------------
let g:airline#themes#monodraw#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" ---------------------------------------------------------------------
" INSERT MODE: High Response (Monodraw-Blue/Teal)
" Uses Layer 5 (Execution) color to signal 'Write' state
" ---------------------------------------------------------------------
let s:I1 = [ '#f4f4f4' , '#0f62fe' , 255 , 27  ]
let s:I2 = [ '#cfd3d6' , '#393939' , 250 , 237 ]
let s:I3 = [ '#8d8d8d' , '#161616' , 244 , 234 ]
let g:airline#themes#monodraw#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" ---------------------------------------------------------------------
" VISUAL MODE: Attention Shift (Monodraw-Magenta)
" Uses Layer 4 (Flow) color to signal 'Select' state
" ---------------------------------------------------------------------
let s:V1 = [ '#f4f4f4' , '#d12771' , 255 , 161 ]
let s:V2 = [ '#cfd3d6' , '#393939' , 250 , 237 ]
let s:V3 = [ '#8d8d8d' , '#161616' , 244 , 234 ]
let g:airline#themes#monodraw#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" ---------------------------------------------------------------------
" REPLACE MODE: Critical Alert (Monodraw-Red)
" Uses Layer 8 (Error) color to signal 'Destructive' state
" ---------------------------------------------------------------------
let s:R1 = [ '#f4f4f4' , '#da1e28' , 255 , 160 ]
let s:R2 = [ '#cfd3d6' , '#393939' , 250 , 237 ]
let s:R3 = [ '#8d8d8d' , '#161616' , 244 , 234 ]
let g:airline#themes#monodraw#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" ---------------------------------------------------------------------
" INACTIVE STATE: Absolute Noise Reduction
" ---------------------------------------------------------------------
let s:IA1 = [ '#393939' , '#161616' , 237 , 234 ]
let s:IA2 = [ '#393939' , '#161616' , 237 , 234 ]
let s:IA3 = [ '#393939' , '#161616' , 237 , 234 ]
let g:airline#themes#monodraw#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

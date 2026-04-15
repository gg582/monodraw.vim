## Try it.

```vimscript
Plug 'gg582/monodraw.vim'

let g:lightline = {
\ 'colorscheme': 'monodraw',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
\   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\ 'component_function': {
\   'filename': 'LightlineFilename'
\ }
\}
```

## Now, your Vim looks better.

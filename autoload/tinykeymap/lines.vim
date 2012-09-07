" @Author:      Tom Link (mailto:micathom AT gmail com?subject=[vim])
" @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)
" @Created:     2012-09-05.
" @Last Change: 2012-09-07.
" @Revision:    35

" The lines tinykeymap war originally created for testing multi-key 
" maps.

if !exists('g:tinykeymap#lines#map')
    let g:tinykeymap#lines#map = g:tinykeymap#mapleader .'l'   "{{{2
endif


if !exists('g:tinykeymap#lines#options')
    let g:tinykeymap#lines#options = {
                \ 'message': 'printf("<%d,%d>", line("."), col("."))',
                \ 'start': 'let s:lines_options = [&l:cul, &lz] | let &l:cul = 1 | let &lz = 0',
                \ 'stop': 'let [&l:cul, &lz] = s:lines_options | unlet s:lines_options',
                \ 'after': 'redraw!'
                \ }
endif


call tinykeymap#EnterMap("lines", g:tinykeymap#lines#map, g:tinykeymap#lines#options)

call tinykeymap#Map('lines', 'O', 'norm! <count>O')
call tinykeymap#Map('lines', 'o', 'norm! <count>o')
call tinykeymap#Map('lines', 'dk', 'norm! dd<count>kp')
call tinykeymap#Map('lines', 'dj', 'norm! dd<count>jp')
call tinykeymap#Map('lines', 'yk', 'norm! yy<count>kp')
call tinykeymap#Map('lines', 'yj', 'norm! yy<count>jp')

call tinykeymap#Map('lines', 'gk', 'norm! <count>k')
call tinykeymap#Map('lines', 'gj', 'norm! <count>j')
call tinykeymap#Map('lines', '<Up>', 'norm! <count>k')
call tinykeymap#Map('lines', '<Down>', 'norm! <count>j')

call tinykeymap#Map('lines', '<C-Up>', 'norm! dd<count>kP')
call tinykeymap#Map('lines', '<C-Down>', 'norm! dd<count>jP')
call tinykeymap#Map('lines', '<S-Up>', 'norm! yy<count>kP')
call tinykeymap#Map('lines', '<S-Down>', 'norm! yy<count>jP')

" Modelled after LineJuggler plugin:
call tinykeymap#Map('lines', '[<Space>', 'norm! <count>O')
call tinykeymap#Map('lines', ']<Space>', 'norm! <count>o')
call tinykeymap#Map('lines', '[e', 'norm! dd<count>kp')
call tinykeymap#Map('lines', ']e', 'norm! dd<count>jp')
call tinykeymap#Map('lines', '[d', 'norm! yy<count>kp')
call tinykeymap#Map('lines', ']d', 'norm! yy<count>jp')


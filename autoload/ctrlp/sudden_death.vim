if exists('g:loaded_ctrlp_sudden_death') && g:loaded_ctrlp_sudden_death
  finish
endif
let g:loaded_ctrlp_sudden_death = 1

let s:sudden_death_var = {
\  'init':   'ctrlp#sudden_death#init()',
\  'sort':   0,
\}

if exists('g:ctrlp_ext_vars') && !empty(g:ctrlp_ext_vars)
  let g:ctrlp_ext_vars = add(g:ctrlp_ext_vars, s:sudden_death_var)
else
  let g:ctrlp_ext_vars = [s:sudden_death_var]
endif

function! ctrlp#sudden_death#init()
  return [
	\'＿人人人人人人＿',
	\'＞　突然の死　＜',
	\'￣ＹＹＹＹＹＹ￣',
  \]
endfunc

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
function! ctrlp#sudden_death#id()
  return s:id
endfunction

" vim:fen:fdl=0:ts=2:sw=2:sts=2

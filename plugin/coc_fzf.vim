" coc-fzf - use FZF for CocList sources
" Maintainer:   Antoine Madec <aja.madec@gmail.com>
" Version:      0.1

if exists('g:loaded_coc_fzf')
  finish
else
  let g:loaded_coc_fzf = 'yes'
endif

augroup CocFzfSelector
  autocmd!
  autocmd TermEnter  * if &ft == 'fzf' | call coc_fzf#common#remap_enter() | endif
  autocmd TermLeave  * if &ft == 'fzf' | call coc_fzf#common#unmap_enter() | endif
augroup END

command CocFzfListDiagnostics  call coc_fzf#diagnostics#fzf_run(0)
command BCocFzfListDiagnostics call coc_fzf#diagnostics#fzf_run(1)
command CocFzfListExtensions   call coc_fzf#extensions#fzf_run()
command CocFzfListOutline      call coc_fzf#outline#fzf_run()

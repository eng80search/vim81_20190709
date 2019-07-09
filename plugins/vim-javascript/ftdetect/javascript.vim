fun! s:SelectJavascript()
  if getline(1) =~# '^#!.*/bin/\%(env\s\+\)\?node\>'
    set ft=javascript
  endif
endfun

augroup javascript_syntax_detection
  autocmd!
  autocmd BufNewFile,BufRead *.{js,mjs,jsm,es,es6},Jakefile setfiletype javascript
  autocmd BufNewFile,BufRead * call s:SelectJavascript()
augroup END

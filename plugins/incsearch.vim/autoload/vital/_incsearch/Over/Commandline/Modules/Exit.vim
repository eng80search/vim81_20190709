" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not mofidify the code nor insert new lines before '" ___vital___'
function! s:_SID() abort
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
endfunction
execute join(['function! vital#_incsearch#Over#Commandline#Modules#Exit#import() abort', printf("return map({'make': ''}, \"vital#_incsearch#function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
delfunction s:_SID
" ___vital___
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:module = {
\	"name" : "Exit",
\	"exit_code" : 0
\}


function! s:module.on_char_pre(cmdline)
	if a:cmdline.is_input("<Over>(exit)")
		call a:cmdline.setchar("")
		call a:cmdline.exit(self.exit_code)
	endif
endfunction


function! s:make()
	return deepcopy(s:module)
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

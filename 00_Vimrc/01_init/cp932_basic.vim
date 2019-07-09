"----------------------------------------
" 2017/02/11��
" Kaoriya�΍�
"----------------------------------------

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"g:no_vimrc_example�𗘗p����vimrc_example.vim�𖳌������Ă��鎞�͂����œǍ�
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('g:no_vimrc_example') && g:no_vimrc_example == 1
  silent! source $VIMRUNTIME/vimrc_example.vim
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""light.vim�\���̂��߂̐ݒ�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encoding=utf-8
"scriptencoding utf-8

"�v���O�C����L���ɂ���
filetype plugin indent on 

"�^�u�y�[�W����ɕ\��
set showtabline=2
""gVim�ł��e�L�X�g�x�[�X�̃^�u�y�[�W���g��
"set guioptions-=e

"��s�̕������𐧌�����
set textwidth=0
if exists('&colorcolumn')
        "set colorcolumn=+1
        autocmd FileType vim, setlocal textwidth=80
endif
"
"********************************************************************************
set number      "�s�ԍ���\������
set cursorline  "�J�[�\���s�̔w�i�F��ς���
set autochdir   "�J�����g�f�B���N�g���������I�ɕύX����
set cursorcolumn "�J�[�\���ʒu�̃J�����̔w�i�F��ς���

nnoremap <F3> :<C-u>setlocal relativenumber!<CR>

"********************************************************************************
:set undodir=C:/00_g.ri/99_vim/undo

"********************************************************************************
set ruler  "���[���[��\��
syntax on  "�V���^�b�N�X�n�C���C�g��L���ɂ���
set nowrap  "�܂�Ԃ��֎~

"********************************************************************************
set laststatus =2 "�X�e�[�^�X�s����ɕ\��
set statusline=%F%r%6n(BufNo.)%8L(TotalRow)%8p%%%8l,%c%=TYPE=%y[ENC=%{&fenc}] "�t�@�C���p�X�̐ݒ� �p�[�Z���g�A�s�A��ݒ�
"set cmdheight =2  "���b�Z�[�W�\�������Q�s�m��
set showmatch      "�Ή����銇�ʂ������\��
set list           "�s��������\��

"********************************************************************************
"�V�����E�B���h�E�����ɊJ��
set splitbelow
"�V�����E�B���h�E���E�ɊJ��
set splitright

"********************************************************************************
"�s�������̕\���L���ݒ�
set listchars=tab:>-,trail:.,eol:$" �^�u�� >--- ���X�y�� . �ŕ\������

augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGrey guibg=DarkGrey
  autocmd VimEnter,WinEnter * match IdeographicSpace /�@/
augroup END

"�C���f���g��Tab�ł͂Ȃ��X�y�[�X�S�ő�����
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"********************************************************************************
"�N�����̃��b�Z�[�W��\�����Ȃ�
set  shortmess+=I
"���X�N���[���o�[���\��
set guioptions+=b
"�c�[���o�[���\���ɂ���
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=b "���o�[��\��
set guioptions-=T


"********************************************************************************
"�o�b�N�A�b�v�t�@�C���ƃX���b�v�t�@�C���̕ۑ��ꏊ�ݒ�
set backup
set backupdir=C:/00_g.ri/99_vim/backup

set noswapfile

"********************************************************************************
"�����P�ꂪ�q�b�g�����ꍇ�́A���₷�����邽�߂ɉ�ʒ����ɕ\������
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

"�i���ړ���͉�ʐ^�񒆂ɕ\������
nnoremap  { {zz
nnoremap  } }zz
nnoremap  [[ [[zz
nnoremap  ]] ]]zz

"�^�O�W�����v������́A�W�����v�����ʐ擪�ɕ\��
nnoremap  <C-]> <C-]>zz
nnoremap  <C-t> <C-t>zz

"�s�̏��߂ƏI��
noremap <S-h>   ^
noremap <S-l>   $

"��ʂ̃X�N���[��
nnoremap <silent>,h H
nnoremap <silent>,l L
nnoremap <silent>,m M

"�s�̐^�񒆂ɃJ�[�\���ړ�
noremap <silent><S-m> :call cursor(0,strlen(getline("."))/2)<CR>

"�X�N���[���֘A�V���b�g�J�b�g�L�[
noremap <S-f> <C-e>
noremap <S-b> <C-y>

noremap <C-j> <C-d> "�y�[�W�����̃X�N���[��
noremap <C-k> <C-u>

"--------------------------------------------------------------------------------
"�E�B���h�E�n�ݒ�
"--------------------------------------------------------------------------------
set splitbelow "�V�����E�B���h�E�����ɊJ��
set splitright "�V�����E�B���h�E���E�ɊJ��

"�E�B���h�E�T�C�Y����
noremap <C-Up> <C-w>-
noremap <C-Down> <C-w>+
noremap <C-Left> <C-w><
noremap <C-Right> <C-w>>

"--------------------------------------------------------------------------------
"�o�b�t�@�֘A�ݒ�
"--------------------------------------------------------------------------------
noremap <C-n> :exe("bn!")<CR>
noremap <C-p> :exe("bp!")<CR>
noremap <C-d> :exe("bd")<CR>

"--------------------------------------------------------------------------------
"�}�����[�h�֘A�ݒ�
"--------------------------------------------------------------------------------

"setlocal omnifunc=syntaxcomplete#Complete
"set completeopt=menuone,preview "�I���j�⊮��L���ɂ���

"--------------------------------------------------------------------------------
"����o�[�W�����֘A�ݒ�
"--------------------------------------------------------------------------------

"Vim8.0�֘A�ݒ�
"�X�N���[���X�y�[�X�͂Ȃ��ɂ���
"scrolloff    number of screen lines to show around the cursor
set so=0

"--------------------------------------------------------------------------------
"�O���c�[���Ƃ̘A�g�֘A
"--------------------------------------------------------------------------------
"�^�O�W�����v�֘A�@���F���͓��ꕶ���Ȃ̂�\\�ŃG�X�P�[�v����
"--options��ctags.cnf�t�@�C���̒�`�֐����^�O�t�@�C���쐬���ɒǉ�����Ƃ�
"�Ӗ�
noremap <M-g>   :cd %:h<CR> :exe("!ctags -R --options=".expand($VIM)."\\ctags.cnf")<CR>
noremap <S-w>   :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
"
"--------------------------------------------------------------------------------
"�����֘A�ݒ�
"--------------------------------------------------------------------------------
"�n�C���C�g�̕\���؂�ւ�
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
"nnoremap / /\v

""--------------------------------------------------------------------------------
""python3 Setting
""--------------------------------------------------------------------------------
"autocmd FileType python map <buffer><F5>  <Plug>(quickrun)<CR>
""autocmd FileType python map <buffer> <F5> <F5> | :exe("!python -S ".expand($VIM)."\\01_Lib\\PythonRemoteDebugging\\pydbgp.py -d localhost:9000  %:p")<CR>
"
""--------------------------------------------------------------------------------
""python3 Debug Setting 
""--------------------------------------------------------------------------------
""autocmd FileType python map <buffer> <F3> :python -S pydbgp -d localhost:9000 %<CR>


"--------------------------------------------------------------------------------
" quickfix Windows height Setting
"--------------------------------------------------------------------------------
au FileType qf call AdjustWindowHeight(3, 15)
function! AdjustWindowHeight(minheight, maxheight)
    let l = 1
    let n_lines = 0
    let w_width = winwidth(0)
    while l <= line('$')
        " number to float for division
        let l_len = strlen(getline(l)) + 0.0
        let line_width = l_len/w_width
        let n_lines += float2nr(ceil(line_width))
        let l += 1
    endw
    exe max([min([n_lines, a:maxheight]), a:minheight]) . "wincmd _"
endfunction

"--------------------------------------------------------------------------------
"�R�}���h�E�B���h�E�ݒ�
"--------------------------------------------------------------------------------
set cmdwinheight=15
"�R�}���h�A�����Ȃǂ̗������̋L�^����ݒ�
set history=10000

set guitablabel=%{GuiTabLabel()}


function! GuiTabLabel()

    let length = 30
    let label = expand("%:t")
    let bufnrlist = tabpagebuflist(v:lnum)

    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '(*)' . label
            break
        endif
    endfor

    if strlen(label) > length  "�t�@�C�������w�蕶�����ȏ�̏ꍇ�A������؂�l�߂�B
      let label = strpart(label, 0, length) . "..."
    endif

    return label
endfunction


"--------------------------------------------------------------------------------
"Filetype�ݒ�
"--------------------------------------------------------------------------------
set enc=utf-8
set fencs=cp932,sjis,euc-jp,iso-2022-jp,utf-8


"--------------------------------------------------------------------------------
"Python36��L���ɂ���
"--------------------------------------------------------------------------------
set pythonthreedll=python36.dll

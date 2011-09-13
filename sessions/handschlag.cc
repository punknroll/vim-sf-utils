let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F1> <Plug>Tex_Help
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
map! <S-Insert> <MiddleMouse>
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nmap d :cs find d =expand("<cword>")
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")
nmap e :cs find e =expand("<cword>")
nmap t :cs find t =expand("<cword>")
nmap c :cs find c =expand("<cword>")
nmap g :cs find g =expand("<cword>")
nmap s :cs find s =expand("<cword>")
vnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
vnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
vnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
vnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
vnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
vnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
vnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
vnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
vnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
vnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
vnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
vnoremap <silent> ,ea :call VEnclose('', '', '\begin{eqnarray}', '\end{eqnarray}')
vnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
vnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
vnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
vnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
vnoremap <silent> ,ce :call VEnclose('\centerline{', '}', '\begin{center}', '\end{center}')
vnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
vnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
vnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
vnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
vnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
vnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
vnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
vnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
vnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
vnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
vnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
vnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
vnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
vnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
vnoremap ,pa :call VEnclose('\part{', '}', '', '')
vnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
vnoremap ,se :call VEnclose('\section{', '}', '', '')
vnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
vnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
vnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
vnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
vnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
vnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
vnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
vnoremap , :call ExecMap(',', 'v')
map Q gq
nmap <silent> S :let @x=@""_diw"xP
nmap <silent> \cv <Plug>VCSVimDiff
nmap <silent> \cu <Plug>VCSUpdate
nmap <silent> \cU <Plug>VCSUnlock
nmap <silent> \cs <Plug>VCSStatus
nmap <silent> \cr <Plug>VCSReview
nmap <silent> \cq <Plug>VCSRevert
nmap <silent> \cn <Plug>VCSAnnotate
nmap <silent> \cN <Plug>VCSSplitAnnotate
nmap <silent> \cl <Plug>VCSLog
nmap <silent> \cL <Plug>VCSLock
nmap <silent> \ci <Plug>VCSInfo
nmap <silent> \cg <Plug>VCSGotoOriginal
nmap <silent> \cG <Plug>VCSClearAndGotoOriginal
nmap <silent> \cd <Plug>VCSDiff
nmap <silent> \cD <Plug>VCSDelete
nmap <silent> \cc <Plug>VCSCommit
nmap <silent> \ca <Plug>VCSAdd
map <silent> \ta <Plug>TRV_TransVimAsk
nmap <silent> \tr <Plug>TRV_TransVimNormal
vmap <silent> \tr <Plug>TRV_TransVimVisual
map \t <Plug>TaskList
nmap <silent> \ssl <Plug>SnippetsListSnippets
nmap <silent> \ssd <Plug>SnippetsDeleteSnippet
nmap <silent> \sse <Plug>SnippetsEditSnippet
nmap <silent> \ssP <Plug>SnippetsInsertSnippet
nmap <silent> \ssp <Plug>SnippetsAppendSnippet
vmap <silent> \ssa <Plug>SnippetsAddSnippet
nmap <silent> \ssa <Plug>SnippetsAddSnippet
nnoremap \gp :GitPullRebase
nnoremap \gc :GitCommit
nnoremap \gA :GitAdd <cfile>
nnoremap \ga :GitAdd
nnoremap \gl :GitLog
nnoremap \gs :GitStatus
nnoremap \gD :GitDiff --cached
nnoremap \gd :GitDiff
nmap <silent> \bv :VSBufExplorer
nmap <silent> \bs :HSBufExplorer
nmap <silent> \be :BufExplorer
vnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
vnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
vnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
vnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
vnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
vnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
vnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
vnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
vnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
vnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
vnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
vnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
vnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
vnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
vnoremap ` :call ExecMap('`', 'v')
nmap gx <Plug>NetrwBrowseX
map g :cs find 0 =expand("<cword>")
map g :cs find 3 =expand("<cword>")
nmap <silent> <Plug> i
nmap <F1> <Plug>Tex_Help
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1)
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>VCSVimDiff :VCSVimDiff
nnoremap <silent> <Plug>VCSUpdate :VCSUpdate
nnoremap <silent> <Plug>VCSUnlock :VCSUnlock
nnoremap <silent> <Plug>VCSStatus :VCSStatus
nnoremap <silent> <Plug>VCSSplitAnnotate :VCSAnnotate!
nnoremap <silent> <Plug>VCSReview :VCSReview
nnoremap <silent> <Plug>VCSRevert :VCSRevert
nnoremap <silent> <Plug>VCSLog :VCSLog
nnoremap <silent> <Plug>VCSLock :VCSLock
nnoremap <silent> <Plug>VCSInfo :VCSInfo
nnoremap <silent> <Plug>VCSClearAndGotoOriginal :VCSGotoOriginal!
nnoremap <silent> <Plug>VCSGotoOriginal :VCSGotoOriginal
nnoremap <silent> <Plug>VCSDiff :VCSDiff
nnoremap <silent> <Plug>VCSDelete :VCSDelete
nnoremap <silent> <Plug>VCSCommit :VCSCommit
nnoremap <silent> <Plug>VCSAnnotate :VCSAnnotate
nnoremap <silent> <Plug>VCSAdd :VCSAdd
nnoremap <SNR>48_ListSnippets :ListSnippets
nnoremap <SNR>48_DeleteSnippet :DeleteSnippet
nnoremap <SNR>48_EditSnippet :EditSnippet
nnoremap <SNR>48_InsertSnippet :InsertSnippet
nnoremap <SNR>48_AppendSnippet :AppendSnippet
vnoremap <SNR>48_AddSnippet :AddSnippet
nnoremap <SNR>48_AddSnippet :%AddSnippet
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nmap <C-Space><C-Space>d:vert scs find d =expand("<cword>")
nmap <C-Space><C-Space>i:vert scs find i ^=expand("<cfile>")$
nmap <C-Space><C-Space>e:vert scs find e =expand("<cword>")
nmap <C-Space><C-Space>t:vert scs find t =expand("<cword>")
nmap <C-Space><C-Space>c:vert scs find c =expand("<cword>")
nmap <C-Space><C-Space>g:vert scs find g =expand("<cword>")
nmap <C-Space><C-Space>s:vert scs find s =expand("<cword>")
nmap <C-Space>d :scs find d =expand("<cword>")
nmap <C-Space>i :scs find i ^=expand("<cfile>")$
nmap <C-Space>f :scs find f =expand("<cfile>")
nmap <C-Space>e :scs find e =expand("<cword>")
nmap <C-Space>t :scs find t =expand("<cword>")
nmap <C-Space>c :scs find c =expand("<cword>")
nmap <C-Space>g :scs find g =expand("<cword>")
nmap <C-Space>s :scs find s =expand("<cword>")
map <F5> :setlocal spell! spelllang=en_us
map <S-Insert> <MiddleMouse>
imap <NL> <Plug>IMAP_JumpForward
iabbr ezfctca fetch( content, tree_count, hash( 'parent_node_id', __ ,'attribute_filter', array( __ ) ) )
iabbr ezfctc fetch( content, tree_count, hash( 'parent_node_id', __,'class_filter_type', include,'class_filter_array', array( __ )  ) )
iabbr ezfctsa fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctas fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcta fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcts fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfct fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclca fetch( content, list_count, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ) ) )
iabbr ezfclc fetch( content, list_count, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ) ) )
iabbr ezfclsa fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclas fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcla fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcls fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcl fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcn fetch( content, node, hash( 'node_id', ) )3hi
iabbr ezfes {foreach __ as $k => $val sequence array( __ ) as $seq}{/foreach}
iabbr ezfe {foreach __ as $k => $val}{/foreach}
iabbr ezas {$|attribute(show)}5bi
abbr cv Ezcv
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=start,eol,indent
set balloonexpr=eclim#util#Balloon(eclim#util#GetLineError(line('.')))
set cpoptions=BceFs
set cscopeprg=/usr/local/bin/cscope
set cscopetag
set cscopeverbose
set fileencodings=ucs-bom,utf-8,default,latin1
set foldclose=all
set foldlevelstart=20
set grepprg=grep\ -nH\ $*
set helplang=de
set history=50
set iminsert=0
set imsearch=0
set incsearch
set iskeyword=@,48-57,_,192-255,-,$,.,~,-,*,/
set keywordprg=:help
set laststatus=2
set mouse=a
set omnifunc=phpcomplete#CompletePHP
set path=,,
set printoptions=paper:a4
set report=10000
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/php,~/.vim/eclim,~/.vim/eclim/after
set scrolljump=5
set scrolloff=3
set shiftwidth=4
set showcmd
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set termencoding=utf-8
set window=55
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/develop2/handschlag.cc
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +48 extension/cgo/design/ezwebin/override/templates/full/anfrage.tpl
badd +32 extension/cgo/design/ezwebin/override/templates/content/collectedinfo/form.tpl
badd +6 design/standard/templates/content/datatype/collect/ezstring.tpl
badd +1 extension/cgo/design/ezwebin/override/templates/line/immobilienprojekt.tpl
badd +682 extension/cgo/design/ezwebin/stylesheets/cgo.css
badd +10 extension/cgo/design/ezwebin/override/templates/full/frontpage.tpl
badd +35 extension/cgo/design/ezwebin/templates/parts/hotline.tpl
badd +152 settings/content.ini
badd +38 settings/override/content.ini.append.php
badd +0 extension/cgo/design/admin/templates/content/datatype/view/ezxmltags/blue.tpl
silent! argdel *
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
file extension/cgo/design/admin/templates/content/datatype/view/ezxmltags/blue.tpl
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer>  <Plug>NetrwHideEdit
nmap <buffer>  <Plug>NetrwRefresh
nnoremap <buffer> <silent> C :let g:netrw_chgwin= winnr()
nnoremap <buffer> <silent> c :exe "keepjumps lcd ".fnameescape(b:netrw_curdir)
nnoremap <buffer> <F1> :he netrw-quickhelp
imap <buffer>  <Plug>NetrwHideEdit
imap <buffer>  <Plug>NetrwRefresh
inoremap <buffer> <silent> C :let g:netrw_chgwin= winnr()
inoremap <buffer> <silent> c :exe "keepjumps lcd ".fnameescape(b:netrw_curdir)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=delete
setlocal buflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'ezp'
setlocal filetype=ezp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,$,.,~,-,*,/
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=phpcomplete#CompletePHP
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ezp'
setlocal syntax=ezp
endif
setlocal tabstop=32
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd /media/develop2/handschlag.cc
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

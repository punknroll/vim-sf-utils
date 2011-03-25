let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
imap <F1> <Plug>Tex_Help
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
map! <S-Insert> <MiddleMouse>
vnoremap  :call PhpAlign()
vnoremap  :call PhpUnComment()
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
vnoremap  :call PhpDocRange()
nnoremap  :call PhpDocSingle()
nmap d :cs find d =expand("<cword>")
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")
nmap e :cs find e =expand("<cword>")
nmap t :cs find t =expand("<cword>")
nmap c :cs find c =expand("<cword>")
nmap g :cs find g =expand("<cword>")
nmap s :cs find s =expand("<cword>")
vnoremap ' "zdi'z'
vnoremap ( "zdi(z)
vmap ,gq :s/\s\+/ /ggvgq
nmap ,gq :%s/\s\+/ /ggq1G
vnoremap , :call ExecMap(',', 'v')
vnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
vnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
vnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
vnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
vnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
vnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
vnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
vnoremap ,se :call VEnclose('\section{', '}', '', '')
vnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
vnoremap ,pa :call VEnclose('\part{', '}', '', '')
vnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
vnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
vnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
vnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
vnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
vnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
vnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
vnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
vnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
vnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
vnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
vnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
vnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
vnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
vnoremap <silent> ,ce :call VEnclose('\centerline{', '}', '\begin{center}', '\end{center}')
vnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
vnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
vnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
vnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
vnoremap <silent> ,ea :call VEnclose('', '', '\begin{eqnarray}', '\end{eqnarray}')
vnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
vnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
vnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
vnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
vnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
vnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
vnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
vnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
vnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
vnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
vnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
noremap ; :s/\([^;]\)$/\1;/
map Q gq
nmap <silent> S :let @x=@""_diw"xP
vmap [% [%m'gv``
vnoremap [ "zdi[z]
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
vmap ]% ]%m'gv``
vmap _j :call Justify('tw',4)
nmap _j :%call Justify('tw',4)
vnoremap ` :call ExecMap('`', 'v')
vnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
vnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
vnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
vnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
vnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
vnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
vnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
vnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
vnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
vnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
vnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
vnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
vnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
vnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
map g :cs find 0 =expand("<cword>")
map g :cs find 3 =expand("<cword>")
vnoremap { "zdi{z}
nnoremap <SNR>46_AddSnippet :%AddSnippet
vnoremap <SNR>46_AddSnippet :AddSnippet
nnoremap <SNR>46_AppendSnippet :AppendSnippet
nnoremap <SNR>46_InsertSnippet :InsertSnippet
nnoremap <SNR>46_EditSnippet :EditSnippet
nnoremap <SNR>46_DeleteSnippet :DeleteSnippet
nnoremap <SNR>46_ListSnippets :ListSnippets
nnoremap <silent> <Plug>CVSEdit :CVSEdit
nnoremap <silent> <Plug>CVSEditors :CVSEditors
nnoremap <silent> <Plug>CVSUnedit :CVSUnedit
nnoremap <silent> <Plug>CVSWatchers :CVSWatchers
nnoremap <silent> <Plug>CVSWatchAdd :CVSWatch add
nnoremap <silent> <Plug>CVSWatchOff :CVSWatch off
nnoremap <silent> <Plug>CVSWatchOn :CVSWatch on
nnoremap <silent> <Plug>CVSWatchRemove :CVSWatch remove
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1)
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
nmap <F1> <Plug>Tex_Help
nmap <silent> <Plug> i
nnoremap <SNR>49_ListSnippets :ListSnippets
nnoremap <SNR>49_DeleteSnippet :DeleteSnippet
nnoremap <SNR>49_EditSnippet :EditSnippet
nnoremap <SNR>49_InsertSnippet :InsertSnippet
nnoremap <SNR>49_AppendSnippet :AppendSnippet
vnoremap <SNR>49_AddSnippet :AddSnippet
nnoremap <SNR>49_AddSnippet :%AddSnippet
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
inoremap  :!phpm =expand("<cword>")
inoremap 	 =InsertTabWrapper()
imap <NL> <Plug>IMAP_JumpForward
inoremap  :call PhpDocSingle()i
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
iabbr ezfe {foreach __ as $k => $val}{/foreach}
iabbr ezfes {foreach __ as $k => $val sequence array( __ ) as $seq}{/foreach}
iabbr ezfcn fetch( content, node, hash( 'node_id', ) )3hi
iabbr ezfcl fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcls fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcla fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclas fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclsa fetch( content, list, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfclc fetch( content, list_count, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ) ) )
iabbr ezfclca fetch( content, list_count, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ) ) )
iabbr ezfct fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcts fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfcta fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctas fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctsa fetch( content, tree, hash( 'parent_node_id', __ ,'class_filter_type', include,'class_filter_array', array( __ ),'sort_by', array( __ ),'attribute_filter', array( __ ),'offset', $view_parameters.offset,'limit', __ ) )
iabbr ezfctc fetch( content, tree_count, hash( 'parent_node_id', __,'class_filter_type', include,'class_filter_array', array( __ )  ) )
iabbr ezfctca fetch( content, tree_count, hash( 'parent_node_id', __ ,'attribute_filter', array( __ ) ) )
abbr cv Ezcv
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=start,eol,indent
set balloonexpr=eclim#util#Balloon(eclim#util#GetLineError(line('.')))
set cmdheight=2
set cscopeprg=/usr/local/bin/cscope
set cscopetag
set cscopeverbose
set dictionary=~/.vim/dict/actionscript.dict
set errorfile=morandell_pflichtenfeft.log
set fileencodings=ucs-bom,utf-8,default,latin1
set foldclose=all
set grepprg=grep\ -nH\ $*
set helplang=de
set history=50
set iminsert=0
set imsearch=0
set incsearch
set iskeyword=@,48-57,_,192-255,-,$
set keywordprg=:help
set laststatus=2
set makeprg=/opt/flex/bin/mxmlc\ %
set mouse=a
set omnifunc=phpcomplete#CompletePHP
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/php,~/.vim/eclim,~/.vim/eclim/after
set scrolljump=5
set scrolloff=3
set shiftwidth=4
set showcmd
set softtabstop=4
set spelllang=de
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set termencoding=utf-8
set window=50
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /media/develop/oldpossumscats.com
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +51 modules/cats/cat_category.php
badd +16 modules/cats/litter.tpl
badd +175 control/Cats/index.php
badd +57 control/Litters/index.php
badd +309 control/Photoseries/index.php
silent! argdel *
edit control/Litters/index.php
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
onoremap <buffer> <silent> [[ ?\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)?:nohls
nnoremap <buffer> <silent> [[ ?\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)?:nohls
onoremap <buffer> <silent> ]] /\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)/:nohls
nnoremap <buffer> <silent> ]] /\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)/:nohls
imap <buffer> <silent> / =eclim#sgml#util#CompleteEndTag()
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,:#
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i,k
setlocal completefunc=eclim#php#complete#CodeComplete
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/dict/actionscript.dict,/home/dotxp/funclist.txt
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%m\ in\ %f\ on\ line\ %l
setlocal expandtab
if &filetype != 'php'
setlocal filetype=php
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qrowcb
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\(require\\|include\\)\\(_once\\)\\?
setlocal includeexpr=
setlocal indentexpr=EclimGetPhpHtmlIndent(v:lnum)
setlocal indentkeys=0{,0},0),:,!^F,o,O,e,*<Return>,=?>,=<?,=*/,<>>,<bs>,{,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=php-5.2\ -l\ %
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=phpcomplete#CompletePHP
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
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
setlocal spelllang=de
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'php'
setlocal syntax=php
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 250 - ((16 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
250
normal! 032l
lcd /media/develop/oldpossumscats.com
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

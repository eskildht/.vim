" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'jpalardy/vim-slime'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" General settings
filetype on
syntax enable
set number relativenumber
filetype plugin indent on
set backspace=indent,eol,start

" Tools
" Remove all trailing whitespace by pressing F1
nnoremap <F1> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" Indent entire file from start to end
nnoremap <F2> msgg=G`s:delmarks s<CR>

" Colorscheme
set termguicolors
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

" airline
set noshowmode

" tmux vim-slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}

" coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

""" LaTex
let g:tex_flavor = "tex"

" Kompilering
autocmd filetype tex nnoremap ep :w<CR>:!pdflatex %<CR><CR>
autocmd filetype tex nnoremap epo :w<CR>:!pdflatex % && open -a "Skim" %:r.pdf<CR><CR>

" Navigering
autocmd filetype tex nnoremap <Space><Space> <Esc>/<++><CR>"_c4l
autocmd filetype tex inoremap <Space><Space> <Esc>/<++><CR>"_c4l

" Skrifttyper
autocmd filetype tex inoremap ,bf \textbf{}<Space><++><Esc>T{i
autocmd filetype tex inoremap ,em \emph{}<Space><++><Esc>T{i

" Dokumentstruktur
autocmd filetype tex inoremap ,sec \section{}<CR><CR><++><Esc>2kf}i
autocmd filetype tex inoremap ,ssec \subsection{}<CR><CR><++><Esc>2kf}i
autocmd filetype tex inoremap ,sssec \subsubsection{}<CR><CR><++><Esc>2kf}i
autocmd filetype tex inoremap ,*sec \section*{}<CR><CR><++><Esc>2kf}i
autocmd filetype tex inoremap ,*ssec \subsection*{}<CR><CR><++><Esc>2kf}i
autocmd filetype tex inoremap ,*sssec \subsubsection*{}<CR><CR><++><Esc>2kf}i
autocmd filetype tex inoremap ,liu \begin{itemize}<CR>\item<Space><CR>\end{itemize}<Esc>kA
autocmd filetype tex inoremap ,lio \begin{enumerate}<CR>\item<Space><CR>\end{enumerate}<Esc>kA
autocmd filetype tex inoremap ,it \item<Space>
autocmd filetype tex inoremap ,fig \begin{figure}[H]<CR>\centering<CR>\includegraphics[width=0.75\textwidth]{}<CR>\caption{<++>}<CR>\label{<++>}<CR>\end{figure}<Esc>03kf}i
autocmd filetype tex inoremap ,tab \begin{table}[H]<CR>\caption{}<CR>\label{<++>}<CR>\begin{center}<CR>\begin{tabular}{<++>}<CR>\hline<CR><++><CR>\hline<CR><++><CR>\hline<CR>\end{tabular}<CR>\end{center}<CR>\end{table}<Esc>011kf}i
autocmd filetype tex inoremap ,code \begin{lstlisting}<CR><CR>\end{lstlisting}<Esc>ki
autocmd filetype tex inoremap ,nc <Space>&<Space>
autocmd filetype tex inoremap ,nr <Space>\\<CR>
autocmd filetype tex inoremap ,re \ref{}<Esc>i
autocmd filetype tex inoremap ,are \autoref{}<Esc>i

" Matematikk
autocmd filetype tex inoremap ,mi $$<Space><++><Esc>T$hi
autocmd filetype tex inoremap ,mdu \[<CR><CR><Esc>i\]<CR><CR><++><Esc>3ki
autocmd filetype tex inoremap ,mdn \begin{equation}<CR><CR>\end{equation}<CR><CR><++><Esc>3ki
autocmd filetype tex inoremap ,fr \frac{a}{<++>}<Space><++><Esc>Tahxi
autocmd filetype tex inoremap ,in \int_{a}^{<++>}<Space><++><Esc>Tahxi
autocmd filetype tex inoremap ,sum \sum_{a}^{<++>}<Space><++><Esc>Tahxi
autocmd filetype tex inoremap ,log \log_{}<Space><++><Esc>T{i

" Symboler
autocmd filetype tex inoremap ,pi \pi
autocmd filetype tex inoremap ,Pi \Pi
autocmd filetype tex inoremap ,al \alpha
autocmd filetype tex inoremap ,Al A
autocmd filetype tex inoremap ,be \beta
autocmd filetype tex inoremap ,Be B
autocmd filetype tex inoremap ,de \delta
autocmd filetype tex inoremap ,De \Delta
autocmd filetype tex inoremap ,ep \varepsilon
autocmd filetype tex inoremap ,Ep E
autocmd filetype tex inoremap ,si \sigma
autocmd filetype tex inoremap ,Si \Sigma
autocmd filetype tex inoremap ,union \cup
autocmd filetype tex inoremap ,isec \cap
autocmd filetype tex inoremap ,bla \langle<Space>
autocmd filetype tex inoremap ,bra \rangle<Space>
autocmd filetype tex inoremap ,rarr \rightarrow<Space>
autocmd filetype tex inoremap ,larr \leftarrow<Space>
autocmd filetype tex inoremap ,ti \cdot<Space>
""" END

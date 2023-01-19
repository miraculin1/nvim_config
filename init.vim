set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'

Plug 'morhetz/gruvbox'

Plug 'skywind3000/asyncrun.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'voldikss/vim-floaterm'

" " If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdcommenter'
Plug 'machakann/vim-sandwich'

" Plug 'wellle/context.vim'

Plug 'cdelledonne/vim-cmake'
" Initialize plugin system
call plug#end()

"self key settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap ; :
:nnoremap <SPACE> <Nop>
let mapleader = " "

"scroll float window
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif


"""""""C & R"""""""
"upd the filetype when change the buffer
autocmd BufEnter * filetype detect

"for c
autocmd FileType c nnoremap <leader>t :AsyncRun gcc -std=c17 $(VIM_FILENAME) -o $(VIM_FILEDIR)/build/$(VIM_FILENOEXT) -g -fsanitize=address -Wall; $(VIM_FILEDIR)/build/$(VIM_FILENOEXT)<CR>
autocmd FileType c nnoremap <leader>b :AsyncRun gcc -std=c17 $(VIM_FILENAME) -o $(VIM_FILEDIR)/build/$(VIM_FILENOEXT) -g -fsanitize=address -Wall<CR>

"for cpp
autocmd FileType cpp nnoremap <leader>t :AsyncRun g++ -std=c++17 $(VIM_FILENAME) -o $(VIM_FILEDIR)/build/$(VIM_FILENOEXT) -g -fsanitize=address -Wall; $(VIM_FILEDIR)/build/$(VIM_FILENOEXT)<CR>
autocmd FileType cpp nnoremap <leader>b :AsyncRun g++ -std=c++17 $(VIM_FILENAME) -o $(VIM_FILEDIR)/build/$(VIM_FILENOEXT) -g -fsanitize=address -Wall<CR>

let g:cmake_link_compile_commands = 1
nnoremap <leader>cg :CMakeGenerate<CR>
nnoremap <leader>cb :CMakeBuild<CR>

nnoremap <leader>rr :AsyncRun build/
nnoremap <leader>o :copen<CR>
nnoremap <leader>m "+yy
vnoremap <leader>m "+y


:nnoremap <C-j> <C-w>j
:nnoremap <C-h> <C-w>h
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
:nnoremap <leader><C-j> <C-w>J
:nnoremap <leader><C-h> <C-w>H
:nnoremap <leader><C-k> <C-w>K
:nnoremap <leader><C-l> <C-w>L
" :nmap <leader>d :vs term://gdb ./build/%:t:r<CR>
nnoremap <leader>n :FloatermNew<CR>

:nnoremap <leader>p :MarkdownPreviewToggle<CR>

:nnoremap <TAB>j :bn<CR>
:nnoremap <TAB>k :bp<CR>
:nnoremap <TAB>n :bw<CR>

syntax on
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
filetype indent on
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set ignorecase
set mouse=

"scheme settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gruvbox_italic=1
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    " "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme gruvbox
"scheme settings end

"settings for look
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline
set background=dark
set number
set signcolumn=yes:1
set relativenumber
set textwidth=80
set nowrap
set scrolloff=5
set laststatus=2
set ruler

set showmatch
set incsearch
set nobackup
"set autochdir
set history=1000
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full
" check modeline in 2 lines at both begin and end
" default 5, interufere with STM32CubeMX code
set modelines=3



"Airline settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1


"coc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extension settings
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-html',
    \ 'coc-clangd',
    \ 'coc-prettier',
    \ 'coc-snippets',
    \ 'coc-cmake']

"转跳时可以不用保存，未保存文件留在 buffer 里
set hidden

set updatetime=100

"new coc-completion settings
""""""""""""""""""""""""""
"Use <tab> and <S-tab> to navigate completion list: >

function! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

  " " Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ CheckBackSpace() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"Use <c-space> to trigger completion: >

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"To make <CR> to confirm selection of selected complete item or notify coc.nvim
"to format on enter, use: >

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
        \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" Use h to show documentation in preview window.
nnoremap <silent>K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


"coc.prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format)

"nerdcommenter
""""""""""""""""""""""""""""""""""""""
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"sticky scroll
""""""""""""""""""""
let g:context_enabled = 1
let g:context_max_height = 10

"GitGutter
""""""""""""""""
let g:gitgutter_enabled = 1

"Floaterm
""""""""""""""""""""
let g:floaterm_position = 'bottomright'

"Treesitter
""""""""""""""""""""
:lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "help", "cpp" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

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

" past img in .md

Plug 'ekickx/clipboard-image.nvim'

Plug 'Civitasv/cmake-tools.nvim'


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'

" Plug 'morhetz/gruvbox'
" Plug 'ellisonleao/gruvbox.nvim'
" Using Vim-Plug
Plug 'navarasu/onedark.nvim'

Plug 'skywind3000/asyncrun.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

" Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'

Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }

" :MasonUpdate updates registry contents
Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" dependency
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

" linter
Plug 'jose-elias-alvarez/null-ls.nvim'

Plug 'folke/todo-comments.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

"" snippet plugins
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

" Plug 'lukas-reineke/indent-blankline.nvim'
" new indent
Plug 'shellRaining/hlchunk.nvim'

Plug 'RRethy/vim-illuminate'

" replace
Plug 'nvim-pack/nvim-spectre'

Plug 'folke/flash.nvim'

" for icons
Plug 'nvim-tree/nvim-web-devicons'


" git things
" Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'

Plug 'preservim/nerdcommenter'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

Plug 'machakann/vim-sandwich'

"rename box
Plug 'stevearc/dressing.nvim'

" code outline
Plug 'hedyhli/outline.nvim'


" Initialize plugin system
call plug#end()

"self key settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap ; :
:nnoremap <SPACE> <Nop>
let mapleader = " "

:nnoremap <A-j> <C-w>j
:nnoremap <A-h> <C-w>h
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
:nnoremap <leader><A-j> <C-w>J
:nnoremap <leader><A-h> <C-w>H
:nnoremap <leader><A-k> <C-w>K
:nnoremap <leader><A-l> <C-w>L

:nnoremap <leader>p :MarkdownPreviewToggle<CR>

:nnoremap <TAB>j :bn<CR>
:nnoremap <TAB>k :bp<CR>
:nnoremap <TAB>n :bw<CR>
:nnoremap <S-M> :Man<CR>

" NOTE: You can use other key to expand snippet.

" " Expand
" imap <expr> <C-l>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-l>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.markdown = []
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']



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
" 80 char
set colorcolumn=80
set clipboard=unnamedplus

"scheme settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gruvbox_italic=1
set termguicolors
" colorscheme gruvbox
let g:onedark_config={
  \ 'style' : 'darker',
  \}
colorscheme onedark
"scheme settings end

"settings for look
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline
set background=dark
set number
set signcolumn=yes:1
set relativenumber
" set textwidth=80
set wrap
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
set hidden
set updatetime=100

" check modeline in 2 lines at both begin and end
" default 5, interufere with STM32CubeMX code
set modelines=3


" " fzf settings
" """"""""""""""""""""""""""""""
" nnoremap <leader>ff :Files<CR>
" nnoremap <leader>fb :Buffer<CR>
" nnoremap <leader>fl :Lines<CR>
" nnoremap <leader>fj :Jumps<CR?
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" " Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" spectre 
""""""""""""""""""""""""""""
nnoremap <leader>fr :Spectre<CR>


"Airline settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1


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

"" doge - for document generate
"""""""""""""""""""""""""

"

" "GitGutter
" """"""""""""""""
" let g:gitgutter_enabled = 1

" far
""""""""""""""""""""
let g:far#enable_undo = 1

"treesitter
""""""""""""""""""
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable
autocmd BufReadPost,FileReadPost * normal zR



:lua << EOF

-- filetype mapping for ROS launch files
vim.filetype.add({
  extension = {
    launch = 'xml'}
})

-- flash(for fast jump)
--------------------------
vim.keymap.set('n', '\'', function() require("flash").jump() end)

-- todo comment
require("todo-comments").setup()

-- auto pair
---------------------------
require("nvim-autopairs").setup {}

-- gitsigns
require('gitsigns').setup()

-- mason
------------------------
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    ["clangd"] = function ()
    require('lspconfig').clangd.setup{
    cmd = {
      "clangd",
      "-header-insertion=never",
      "--query-driver=/usr/bin/gcc,/usr/bin/g++,/usr/bin/arm-none-eabi-gcc,/usr/bin/arm-none-eabi-g++",
      }
    }
    end,
}

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
    },
})

-- Insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

-- cmp
---------------------------------
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end


local cmp = require'cmp'

  cmp.setup({
    snippet = {
    -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
          feedkey("<Plug>(vsnip-expand-or-jump)", "")
        elseif has_words_before() then
          cmp.complete()
        else
          fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        end
      end, { "i", "s" }),

      ["<S-Tab>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.fn["vsnip#jumpable"](-1) == 1 then
          feedkey("<Plug>(vsnip-jump-prev)", "")
        end
      end, { "i", "s" }),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      { name = 'path'},
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      -- { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>fm', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- ouline
-------------
require("outline").setup(
{
    outline_window = {
      -- Where to open the split window: right/left
      position = 'right',
      -- The default split commands used are 'topleft vs' and 'botright vs'
      -- depending on `position`. You can change this by providing your own
      -- `split_command`.
      -- `position` will not be considered if `split_command` is non-nil.
      -- This should be a valid vim command used for opening the split for the
      -- outline window. Eg, 'rightbelow vsplit'.
      split_command = nil,

      -- Percentage or integer of columns
      width = 35, 
      -- Whether width is relative to the total width of nvim
      -- When relative_width = true, this means take 25% of the total
      -- screen width for outline window.
      relative_width = true,

      -- Auto close the outline window if goto_location is triggered and not for
      -- peek_location
      auto_close = false,
      -- Automatically scroll to the location in code when navigating outline window.
      auto_jump = false,
      -- boolean or integer for milliseconds duration to apply a temporary highlight
      -- when jumping. false to disable.
      jump_highlight_duration = 300,
      -- Whether to center the cursor line vertically in the screen when
      -- jumping/focusing. Executes zz.
      center_on_jump = true,

      -- Vim options for the outline window
      show_numbers = false,
      show_relative_numbers = false,
      wrap = false,

      -- true/false/'focus_in_outline'/'focus_in_code'.
      -- The last two means only show cursorline when the focus is in outline/code.
      -- 'focus_in_outline' can be used if the outline_items.auto_set_cursor
      -- operations are too distracting due to visual contrast caused by cursorline.
      show_cursorline = true,
      -- Enable this only if you enabled cursorline so your cursor color can
      -- blend with the cursorline, in effect, as if your cursor is hidden
      -- in the outline window.
      -- This makes your line of cursor have the same color as if the cursor
      -- wasn't focused on the outline window.
      -- This feature is experimental.
      hide_cursor = false,

      -- Whether to auto-focus on the outline window when it is opened.
      -- Set to false to *always* retain focus on your previous buffer when opening
      -- outline.
      -- If you enable this you can still use bangs in :Outline! or :OutlineOpen! to
      -- retain focus on your code. If this is false, retaining focus will be
      -- enforced for :Outline/:OutlineOpen and you will not be able to have the
      -- other behaviour.
      focus_on_open = true,
      -- Winhighlight option for outline window.
      -- See :help 'winhl'
      -- To change background color to "CustomHl" for example, use "Normal:CustomHl".
      winhl = '',
    },

    outline_items = {
      -- Show extra details with the symbols (lsp dependent) as virtual next
      show_symbol_details = true,
      -- Show corresponding line numbers of each symbol on the left column as
      -- virtual text, for quick navigation when not focused on outline.
      -- Why? See this comment:
      -- https://github.com/simrat39/symbols-outline.nvim/issues/212#issuecomment-1793503563
      show_symbol_lineno = false,
      -- Whether to highlight the currently hovered symbol and all direct parents
      highlight_hovered_item = true,
      -- Whether to automatically set cursor location in outline to match
      -- location in code when focus is in code. If disabled you can use
      -- `:OutlineFollow[!]` from any window or `<C-g>` from outline window to
      -- trigger this manually.
      auto_set_cursor = true,
      -- Autocmd events to automatically trigger these operations.
      auto_update_events = {
        -- Includes both setting of cursor and highlighting of hovered item.
        -- The above two options are respected.
        -- This can be triggered manually through `follow_cursor` lua API,
        -- :OutlineFollow command, or <C-g>.
        follow = { 'CursorMoved' },
        -- Re-request symbols from the provider.
        -- This can be triggered manually through `refresh_outline` lua API, or
        -- :OutlineRefresh command.
        items = { 'InsertLeave', 'WinEnter', 'BufEnter', 'BufWinEnter', 'TabEnter', 'BufWritePost' },
      },
    },

    -- Options for outline guides which help show tree hierarchy of symbols
    guides = {
      enabled = true,
      markers = {
        -- It is recommended for bottom and middle markers to use the same number
        -- of characters to align all child nodes vertically.
        bottom = '└',
        middle = '├',
        vertical = '│',
      },
    },

    symbol_folding = {
      -- Depth past which nodes will be folded by default. Set to false to unfold all on open.
      autofold_depth = 1,
      -- When to auto unfold nodes
      auto_unfold = {
        -- Auto unfold currently hovered symbol
        hovered = true,
        -- Auto fold when the root level only has this many nodes.
        -- Set true for 1 node, false for 0.
        only = true,
      },
      markers = { '', '' },
    },

    preview_window = {
      -- Automatically open preview of code location when navigating outline window
      auto_preview = false,
      -- Automatically open hover_symbol when opening preview (see keymaps for
      -- hover_symbol).
      -- If you disable this you can still open hover_symbol using your keymap
      -- below.
      open_hover_on_preview = false,
      width = 50,     -- Percentage or integer of columns
      min_width = 50, -- This is the number of columns
      -- Whether width is relative to the total width of nvim.
      -- When relative_width = true, this means take 50% of the total
      -- screen width for preview window, ensure the result width is at least 50
      -- characters wide.
      relative_width = true,
      -- Border option for floating preview window.
      -- Options include: single/double/rounded/solid/shadow or an array of border
      -- characters.
      -- See :help nvim_open_win() and search for "border" option.
      border = 'single',
      -- winhl options for the preview window, see ':h winhl'
      winhl = 'NormalFloat:',
      -- Pseudo-transparency of the preview window, see ':h winblend'
      winblend = 0,
      -- Experimental feature that let's you edit the source content live
      -- in the preview window. Like VS Code's "peek editor".
      live = false
    },

    -- These keymaps can be a string or a table for multiple keys.
    -- Set to `{}` to disable. (Using 'nil' will fallback to default keys)
    keymaps = { 
      show_help = '?',
      close = {'<Esc>', 'q'},
      -- Jump to symbol under cursor.
      -- It can auto close the outline window when triggered, see
      -- 'auto_close' option above.
      goto_location = '<Cr>',
      -- Jump to symbol under cursor but keep focus on outline window.
      peek_location = 'o',
      -- Visit location in code and close outline immediately
      goto_and_close = '<S-Cr>',
      -- Change cursor position of outline window to match current location in code.
      -- 'Opposite' of goto/peek_location.
      restore_location = '<C-g>',
      -- Open LSP/provider-dependent symbol hover information
      hover_symbol = '<C-space>',
      -- Preview location code of the symbol under cursor
      toggle_preview = 'K',
      rename_symbol = 'r',
      code_actions = 'a',
      -- These fold actions are collapsing tree nodes, not code folding
      fold = 'h',
      unfold = 'l',
      fold_toggle = '<Tab>',
      -- Toggle folds for all nodes.
      -- If at least one node is folded, this action will fold all nodes.
      -- If all nodes are folded, this action will unfold all nodes.
      fold_toggle_all = '<S-Tab>',
      fold_all = 'W',
      unfold_all = 'E',
      fold_reset = 'R',
      -- Move down/up by one line and peek_location immediately.
      -- You can also use outline_window.auto_jump=true to do this for any
      -- j/k/<down>/<up>.
      down_and_jump = '<C-j>',
      up_and_jump = '<C-k>',
    },

    providers = {
      priority = { 'lsp', 'coc', 'markdown', 'norg' },
      -- Configuration for each provider (3rd party providers are supported)
      lsp = {
        -- Lsp client names to ignore
        blacklist_clients = {},
      },
      markdown = {
        -- List of supported ft's to use the markdown provider
        filetypes = {'markdown'},
      },
    },

    symbols = {
      -- Filter by kinds (string) for symbols in the outline.
      -- Possible kinds are the Keys in the icons table below.
      -- A filter list is a string[] with an optional exclude (boolean) field.
      -- The symbols.filter option takes either a filter list or ft:filterList
      -- key-value pairs.
      -- Put  exclude=true  in the string list to filter by excluding the list of
      -- kinds instead.
      -- Include all except String and Constant:
      --   filter = { 'String', 'Constant', exclude = true }
      -- Only include Package, Module, and Function:
      --   filter = { 'Package', 'Module', 'Function' }
      -- See more examples below.
      filter = nil,

      -- You can use a custom function that returns the icon for each symbol kind.
      -- This function takes a kind (string) as parameter and should return an
      -- icon as string.
      icon_fetcher = nil,
      -- 3rd party source for fetching icons. Fallback if icon_fetcher returned
      -- empty string. Currently supported values: 'lspkind'
      icon_source = nil,
      -- The next fallback if both icon_fetcher and icon_source has failed, is
      -- the custom mapping of icons specified below. The icons table is also
      -- needed for specifying hl group.
      icons = {
        File = { icon = '󰈔', hl = 'Identifier' },
        Module = { icon = '󰆧', hl = 'Include' },
        Namespace = { icon = '󰅪', hl = 'Include' },
        Package = { icon = '󰏗', hl = 'Include' },
        Class = { icon = '𝓒', hl = 'Type' },
        Method = { icon = 'ƒ', hl = 'Function' },
        Property = { icon = '', hl = 'Identifier' },
        Field = { icon = '󰆨', hl = 'Identifier' },
        Constructor = { icon = '', hl = 'Special' },
        Enum = { icon = 'ℰ', hl = 'Type' },
        Interface = { icon = '󰜰', hl = 'Type' },
        Function = { icon = '', hl = 'Function' },
        Variable = { icon = '', hl = 'Constant' },
        Constant = { icon = '', hl = 'Constant' },
        String = { icon = '𝓐', hl = 'String' },
        Number = { icon = '#', hl = 'Number' },
        Boolean = { icon = '⊨', hl = 'Boolean' },
        Array = { icon = '󰅪', hl = 'Constant' },
        Object = { icon = '⦿', hl = 'Type' },
        Key = { icon = '🔐', hl = 'Type' },
        Null = { icon = 'NULL', hl = 'Type' },
        EnumMember = { icon = '', hl = 'Identifier' },
        Struct = { icon = '𝓢', hl = 'Structure' },
        Event = { icon = '🗲', hl = 'Type' },
        Operator = { icon = '+', hl = 'Identifier' },
        TypeParameter = { icon = '𝙏', hl = 'Identifier' },
        Component = { icon = '󰅴', hl = 'Function' },
        Fragment = { icon = '󰅴', hl = 'Constant' },
        TypeAlias = { icon = ' ', hl = 'Type' },
        Parameter = { icon = ' ', hl = 'Identifier' },
        StaticMethod = { icon = ' ', hl = 'Function' },
        Macro = { icon = ' ', hl = 'Function' },
      },
    },
  }
)

-- Treesitter
-- """"""""""""""""""""
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "cpp", "cmake", "xml" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

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
    -- disable = function(lang, buf)
    --     local max_filesize = 100 * 1024 -- 100 KB
    --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    --     if ok and stats and stats.size > max_filesize then
    --         return true
    --     end
    -- end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

-- things about indent
------------------------
require('hlchunk').setup({
    indent = {
        chars = { "│", }, -- 更多的字符可以在 https://unicodeplus.com/ 这个网站上找到


        style = {
            "#81776e",
        },
    },
    blank = {
        enable = false,
    }
})

-- vim-illuminate
----------------------
-- default configuration
require('illuminate').configure({
    -- providers: provider used to get references in the buffer, ordered by priority
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    -- delay: delay in milliseconds
    delay = 100,
    -- filetype_overrides: filetype specific overrides.
    -- The keys are strings to represent the filetype while the values are tables that
    -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
    filetype_overrides = {},
    -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
    filetypes_denylist = {
        'dirvish',
        'fugitive',
    },
    -- filetypes_allowlist: filetypes to illuminate, this is overriden by filetypes_denylist
    filetypes_allowlist = {},
    -- modes_denylist: modes to not illuminate, this overrides modes_allowlist
    -- See `:help mode()` for possible values
    modes_denylist = {},
    -- modes_allowlist: modes to illuminate, this is overriden by modes_denylist
    -- See `:help mode()` for possible values
    modes_allowlist = {},
    -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
    -- Only applies to the 'regex' provider
    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
    providers_regex_syntax_denylist = {},
    -- providers_regex_syntax_allowlist: syntax to illuminate, this is overriden by providers_regex_syntax_denylist
    -- Only applies to the 'regex' provider
    -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
    providers_regex_syntax_allowlist = {},
    -- under_cursor: whether or not to illuminate under the cursor
    under_cursor = true,
    -- large_file_cutoff: number of lines at which to use large_file_config
    -- The `under_cursor` option is disabled when this cutoff is hit
    large_file_cutoff = nil,
    -- large_file_config: config to use for large files (based on large_file_cutoff).
    -- Supports the same keys passed to .configure
    -- If nil, vim-illuminate will be disabled for large files.
    large_file_overrides = nil,
    -- min_count_to_highlight: minimum number of matches required to perform highlighting
    min_count_to_highlight = 1,
})

require("cmake-tools").setup {
  cmake_command = "cmake", -- this is used to specify cmake command path
  ctest_command = "ctest", -- this is used to specify ctest command path
  cmake_regenerate_on_save = true, -- auto generate when save CMakeLists.txt
  cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- this will be passed when invoke `CMakeGenerate`
  cmake_build_options = {}, -- this will be passed when invoke `CMakeBuild`
  -- support macro expansion:
  --       ${kit}
  --       ${kitGenerator}
  --       ${variant:xx}
  cmake_build_directory = "out/${variant:buildType}", -- this is used to specify generate directory for cmake, allows macro expansion, relative to vim.loop.cwd()
  cmake_soft_link_compile_commands = true, -- this will automatically make a soft link from compile commands file to project root dir
  cmake_compile_commands_from_lsp = false, -- this will automatically set compile commands file location using lsp, to use it, please set `cmake_soft_link_compile_commands` to false
  cmake_kits_path = nil, -- this is used to specify global cmake kits path, see CMakeKits for detailed usage
  cmake_variants_message = {
    short = { show = true }, -- whether to show short message
    long = { show = true, max_length = 40 }, -- whether to show long message
  },
  cmake_dap_configuration = { -- debug settings for cmake
    name = "cpp",
    type = "codelldb",
    request = "launch",
    stopOnEntry = false,
    runInTerminal = true,
    console = "integratedTerminal",
  },
  cmake_executor = { -- executor to use
    name = "quickfix", -- name of the executor
    opts = {}, -- the options the executor will get, possible values depend on the executor type. See `default_opts` for possible values.
    default_opts = { -- a list of default and possible values for executors
      quickfix = {
        show = "always", -- "always", "only_on_error"
        position = "belowright", -- "vertical", "horizontal", "leftabove", "aboveleft", "rightbelow", "belowright", "topleft", "botright", use `:h vertical` for example to see help on them
        size = 10,
        encoding = "utf-8", -- if encoding is not "utf-8", it will be converted to "utf-8" using `vim.fn.iconv`
        auto_close_when_success = true, -- typically, you can use it with the "always" option; it will auto-close the quickfix buffer if the execution is successful.
      },
      toggleterm = {
        direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
        close_on_exit = false, -- whether close the terminal when exit
        auto_scroll = true, -- whether auto scroll to the bottom
      },
      overseer = {
        new_task_opts = {
            strategy = {
                "toggleterm",
                direction = "horizontal",
                autos_croll = true,
                quit_on_exit = "success"
            }
        }, -- options to pass into the `overseer.new_task` command
        on_new_task = function(task)
            require("overseer").open(
                { enter = false, direction = "right" }
            )
        end,   -- a function that gets overseer.Task when it is created, before calling `task:start`
      },
      terminal = {
        name = "Main Terminal",
        prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
        split_direction = "horizontal", -- "horizontal", "vertical"
        split_size = 11,

        -- Window handling
        single_terminal_per_instance = true, -- Single viewport, multiple windows
        single_terminal_per_tab = true, -- Single viewport per tab
        keep_terminal_static_location = true, -- Static location of the viewport if avialable

        -- Running Tasks
        start_insert = false, -- If you want to enter terminal with :startinsert upon using :CMakeRun
        focus = false, -- Focus on terminal when cmake task is launched.
        do_not_add_newline = false, -- Do not hit enter on the command inserted when using :CMakeRun, allowing a chance to review or modify the command before hitting enter.
      }, -- terminal executor uses the values in cmake_terminal
    },
  },
  cmake_runner = { -- runner to use
    name = "terminal", -- name of the runner
    opts = {}, -- the options the runner will get, possible values depend on the runner type. See `default_opts` for possible values.
    default_opts = { -- a list of default and possible values for runners
      quickfix = {
        show = "always", -- "always", "only_on_error"
        position = "belowright", -- "bottom", "top"
        size = 10,
        encoding = "utf-8",
        auto_close_when_success = true, -- typically, you can use it with the "always" option; it will auto-close the quickfix buffer if the execution is successful.
      },
      toggleterm = {
        direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
        close_on_exit = false, -- whether close the terminal when exit
        auto_scroll = true, -- whether auto scroll to the bottom
      },
      overseer = {
        new_task_opts = {
            strategy = {
                "toggleterm",
                direction = "horizontal",
                autos_croll = true,
                quit_on_exit = "success"
            }
        }, -- options to pass into the `overseer.new_task` command
        on_new_task = function(task)
        end,   -- a function that gets overseer.Task when it is created, before calling `task:start`
      },
      terminal = {
        name = "Main Terminal",
        prefix_name = "[CMakeTools]: ", -- This must be included and must be unique, otherwise the terminals will not work. Do not use a simple spacebar " ", or any generic name
        split_direction = "horizontal", -- "horizontal", "vertical"
        split_size = 11,

        -- Window handling
        single_terminal_per_instance = true, -- Single viewport, multiple windows
        single_terminal_per_tab = true, -- Single viewport per tab
        keep_terminal_static_location = true, -- Static location of the viewport if avialable

        -- Running Tasks
        start_insert = false, -- If you want to enter terminal with :startinsert upon using :CMakeRun
        focus = false, -- Focus on terminal when cmake task is launched.
        do_not_add_newline = false, -- Do not hit enter on the command inserted when using :CMakeRun, allowing a chance to review or modify the command before hitting enter.
      },
    },
  },
  cmake_notifications = {
    runner = { enabled = true },
    executor = { enabled = true },
    spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }, -- icons used for progress display
    refresh_rate_ms = 100, -- how often to iterate icons
  },
}
EOF


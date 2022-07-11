" ----------------------------------------------------------------------------
" Will refactor this into Lua in the near future
" ----------------------------------------------------------------------------
:set number
" I don't like relativenumber personally.
" :set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set cursorline
":set cursorcolumn
:set wildmenu
:set wildmode=list:longest
:set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
:set termguicolors
" :set foldmethod=indent
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
" set foldmethod=syntax

:let mapleader = ","

"call plug#begin()
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'https://github.com/preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'" NerdTree
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/yamatsum/nvim-cursorline' " For line/keyword highlighting
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'github/copilot.vim'
Plug 'neovim/nvim-lspconfig'

" For nvim autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Bufferline for tabs
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'

Plug 'ellisonleao/glow.nvim', {'branch': 'main'}

" Sessions
Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'

Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

Plug 'petertriho/nvim-scrollbar'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Plug 'matze/vim-move'
" Plug 'https://github.com/fedepujol/move.nvim'

" Snippets
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'vscodeshift/material-ui-snippets', { 'do': 'yarn install --frozen-lockfile && yarn build' }

Plug 'folke/lsp-colors.nvim'

Plug 'folke/trouble.nvim'

Plug 'lalitmee/browse.nvim' " Browse things
Plug 'numToStr/Comment.nvim' " Comment things
" Plug 'karb94/neoscroll.nvim' " Smooth Scroll
" Plug 'ahmedkhalf/project.nvim' "Project Manager
Plug 'gennaro-tedesco/nvim-jqx'

Plug 'goolord/alpha-nvim' "Dashboard
" Plug 'nvim-neo-tree/neo-tree.nvim'" Neo Tree
" Plug 'MunifTanjim/nui.nvim' "NUI
Plug 'mbbill/undotree'
Plug 'tanvirtin/vgit.nvim' "Visual Git

Plug 'folke/zen-mode.nvim'
Plug 'windwp/nvim-spectre'

set encoding=UTF-8

call plug#end()

" Keybindings
nmap <C-b> :NERDTreeToggle<CR>

filetype on
filetype plugin on
filetype indent on
 
syntax on

"for transparency across any theme
"onedark has no transparency so this enables it
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

:colorscheme onedark
" let g:airline_theme='onedark'

let g:airline_theme='ayu_dark'"'deus'"'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1

"telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fc <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" LSPSaga
nnoremap <leader>rn <cmd>Lspsaga rename<cr>
nnoremap <leader>ca <cmd>Lspsaga code_action<cr>
"nnoremap <silent> ge <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent><leader>k :Lspsaga hover_doc<CR>
nnoremap <silent>gs :Lspsaga signature_help<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
" nnoremap <silent><space>e :Lspsaga show_line_diagnostics<CR>

" Spectre for Find and Replace
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
" GLow Preview
noremap <leader>p :Glow<CR>

" undotree
nnoremap <leader>z :UndotreeToggle<CR>

" Zen Mode
noremap <space>z :ZenMode<CR>
" let g:move_key_modifier = 'S'
" let g:move_key_modifier_visualmode = 'C'

" let g:glow_use_pager = v:true

" Load Lua Configs
:lua require('main_config')

" nvim autocomplete
set completeopt=menu,menuone,noselect

" Snippets

let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

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

" let g:move_key_modifier = 'C'
" let g:move_key_modifier_visualmode = 'S'

" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


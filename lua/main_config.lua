require 'sushrit_lawliet.options'
require 'sushrit_lawliet.lspconfig'
require 'sushrit_lawliet.tree_sitter'
require 'sushrit_lawliet.browse_config'
require 'sushrit_lawliet.dashboard'
require 'sushrit_lawliet.snippets'
-- require 'sushrit_lawliet.nav-config'

-- Start Dashboard
vim.cmd("Alpha")

-- require('project_nvim').setup()
--
-- local project_nvim = require("project_nvim")
-- local recent_projects = project_nvim.get_recent_projects()
--
-- print(vim.inspect(recent_projects))
require('vgit').setup()

require('gitsigns').setup()

require('Comment').setup()

-- require('neoscroll').setup()

require("which-key").setup {
	-- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

require("nvim-autopairs").setup {}

-- require('telescope').setup { 
-- 	defaults = {
-- 		file_ignore_patterns = {
-- 			"node_modules"
-- 		} 
-- 	} 
-- }

require("scrollbar").setup({
    show = true,
    show_in_active_only = false,
    set_highlights = true,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    max_lines = false, -- disables if no. of lines in buffer exceeds this
    handle = {
        text = " ",
        color = nil,
        cterm = nil,
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = {
            text = { "-", "=" },
            priority = 0,
            color = nil,
            cterm = nil,
            highlight = "Search",
        },
        Error = {
            text = { "-", "=" },
            priority = 1,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
            text = { "-", "=" },
            priority = 2,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextWarn",
        },
        Info = {
            text = { "-", "=" },
            priority = 3,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextInfo",
        },
        Hint = {
            text = { "-", "=" },
            priority = 4,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextHint",
        },
        Misc = {
            text = { "-", "=" },
            priority = 5,
            color = nil,
            cterm = nil,
            highlight = "Normal",
        },
    },
    excluded_buftypes = {
        "terminal",
    },
    excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
    },
    autocmd = {
        render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
        },
        clear = {
            "BufWinLeave",
            "TabLeave",
            "TermLeave",
            "WinLeave",
        },
    },
    handlers = {
        diagnostic = true,
        search = false, -- Requires hlslens to be loaded, will run require("scrollbar.handlers.search").setup() for you
    },
})

require("nvim-tree").setup({
	auto_reload_on_write = true,
	renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        indent_markers = {
          enable = false,
          icons = {
            corner = "└ ",
            edge = "│ ",
            item = "│ ",
            none = "  ",
          },
        },
        icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
      },
})

-- echom 'main_config.lua loaded'
-- print('main_config.lua loaded', vim.opt.runtimepath, '~/.config/nvim/plugins/snippets')

-- vim.opt.runtimepath = vim.opt.runtimepath + '~/.config/nvim/plugins/snippets'
-- require('luasnip/loaders/from_vscode').lazy_load()

require('luasnip/loaders/from_vscode').lazy_load({path = '~/.config/nvim/plugins/snippets'})

-- vim.opt.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    -- show_current_context_start = true,
}

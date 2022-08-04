require("toggleterm").setup{}

local Terminal  = require('toggleterm.terminal').Terminal
local czg = Terminal:new({ cmd = "czg", hidden = true, direction="float" })

function _czg_toggle()
  czg:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gz", "<cmd>lua _czg_toggle()<CR>", {noremap = true, silent = true})


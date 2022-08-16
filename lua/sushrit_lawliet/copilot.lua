-- Copilot on Apple Silicon Depends on Node 17.x or lower, so install node 16 LTS and point to it here for Copilot use exclusively.
vim.g.copilot_node_command = "/opt/homebrew/Cellar/node@16/16.16.0/bin/node"

vim.g.copilot_filetypes = {
	markdown = true
}

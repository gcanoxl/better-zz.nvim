local Config = require("better-zz.config")

local M = {}

local function get_offsets()
	if Config.options.mode == 'line' then
		return Config.options.line
	end
	local percentage = Config.options.percentage
	local height = vim.api.nvim_win_get_height(0) - 1
	local offsets = math.floor(height * percentage)
	return offsets
end

function M.zz()
	local offsets = get_offsets()
	local cmd = 'exec "normal! zt' .. offsets .. '\\<C-y>"'
	vim.cmd(cmd)
end

function M.setup(options)
	Config.setup(options)
	if Config.options.mapping then
		vim.api.nvim_set_keymap("n", "zz", "<cmd>lua require('better-zz').zz()<cr>", { noremap = true, silent = true })
	end
end

return M

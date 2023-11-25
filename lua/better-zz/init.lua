local Config = require("better-zz.config")

local M = {}

local function get_offsets()
	local percentage = Config.options.percentage
	local height = vim.api.nvim_win_get_height(0) - 1
	local offsets = math.floor(height * (1 - percentage))
	return offsets
end

local function init()
	local opts = { noremap = true, silent = true }
	local offsets = get_offsets()
	vim.api.nvim_set_keymap("n", "zz", "zz" .. offsets .. "<C-e>", opts)
end

function M.setup(options)
	Config.setup(options)
	init()
end

return M

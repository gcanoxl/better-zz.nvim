local M = {}

local defaults = {
	mode = 'percentage',
	percentage = 0.3,
	line = 8,
}

M.options = {}

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", defaults, options or {})
end

return M

local M = {}

local defaults = {
	percentage = 0.3,
}

M.options = {}

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", defaults, options or {})
end

return M
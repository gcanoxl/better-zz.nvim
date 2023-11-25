# 🏠 better-zz.nvim
Improved zz command, putting the line under the cursor at the user-specified percentage of the window.


# 📦 Installation
Install the plugin with your preferred package manager:


## 💤 [Lazy](https://github.com/folke/lazy.nvim)
```lua
{
    "gcanoxl/better-zz.nvim",
    config = function()
        require("better-zz").setup({
            -- opts?
        })
    end
},
```

# ⚙️  Configuration 
```lua
require("better-zz").setup({
    mode = 'line', -- can be either `line` or `percentage`
    percentage = 0.1, -- will be ignored if `mode` is set to `line`
    line = 20 -- will be ignored if `mode` is set to 'percentage'
    mapping = true -- if this option is set to false, you need map on your own
})
```
## 🚀 mapping on your own
```lua
vim.api.nvim_set_keymap("n", "zz", "<cmd>lua require('better-zz').zz()<cr>", { noremap = true, silent = true })
```

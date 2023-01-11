-- [[ Setting options ]]
-- See `:help vim.o`
vim.o.hlsearch = false                    -- Set highlight on search
vim.o.mouse = 'a'                         -- Enable mouse mode
vim.o.breakindent = true                  -- Enable break indent
vim.o.undofile = true                     -- Save undo history
vim.o.ignorecase = true                   -- Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true
vim.o.updatetime = 250                    -- Decrease update time
vim.o.termguicolors = true                -- Set colorscheme
vim.o.completeopt = 'menuone,noselect'    -- Set completeopt to have a better completion experience
vim.wo.signcolumn = 'yes'
vim.wo.number = true                      -- Make line numbers default
vim.opt.splitright = true                 -- Force vertical spilt on tab the right
vim.opt.splitbelow = true                 -- Force Horizontal spilt on tab below
vim.opt.swapfile =false                   -- Disable swapfile
vim.opt.cursorline = false                 -- Horizontal cursor highlight
vim.opt.relativenumber = true             -- set relative line number one the number line 





vim.cmd [[colorscheme onedark]]

function ColorMyPencils(color)

  color = color or 'onedark' 

  vim.cmd.colorscheme(color)
  
  vim.api.nvim_set_hl(0, "Normal", {bg = "none" })

  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
  

end

-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups
    

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}

ColorMyPencils()




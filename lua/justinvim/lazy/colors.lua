return {
   {
        "catppuccin/nvim",
        name = "catppuccin-latte",
        priority = 1000, -- Load early to ensure it’s the base theme
        config = function()
            require("catppuccin").setup({
                flavour = "latte", -- Set latte as the default flavor
                transparent_background = false, -- Match your bamboo setup
                term_colors = true,
                integrations = {
                    cmp = true,       -- For nvim-cmp integration
                    gitsigns = true,  -- If you use gitsigns
                    lsp_trouble = true,
                    mason = true,     -- For mason.nvim
                    treesitter = true, -- For nvim-treesitter
                    notify = true,    -- For fidget.nvim
                },
            })
            --vim.cmd("colorscheme catppuccin-latte") -- Set as default colorscheme
        end,
    },
   {
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- lua
            require('bamboo').setup {
                -- Main options --
                -- NOTE: to use the light theme, set `vim.o.background = 'light'`
                style = 'vulgaris', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
                toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
                toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
                transparent = false, -- Show/hide background
                dim_inactive = false, -- Dim inactive windows/buffers
                term_colors = true, -- Change terminal color as per the selected theme style
                ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

                -- Change code style ---
                -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
                -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
                code_style = {
                    comments = { italic = true },
                    conditionals = { italic = true },
                    keywords = {},
                    functions = {},
                    namespaces = { italic = true },
                    parameters = { italic = true },
                    strings = {},
                    variables = {},
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
                    darker = false, -- darker colors for diagnostic
                    undercurl = true, -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            }
        end,
    },
    {
        { "Mofiqul/dracula.nvim" },
        {
            "LazyVim/LazyVim",
        }
    },
    {
        'loctvl842/monokai-pro.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require("monokai-pro").setup({
                transparent_background = false,
                terminal_colors = true,
                devicons = true, -- highlight the icons of `nvim-web-devicons`
                styles = {
                    comment = { italic = true },
                    keyword = { italic = true }, -- any other keyword
                    type = { italic = true }, -- (preferred) int, long, char, etc
                    storageclass = { italic = true }, -- static, register, volatile, etc
                    structure = { italic = true }, -- struct, union, enum, etc
                    parameter = { italic = true }, -- parameter pass in function
                    annotation = { italic = true },
                    tag_attribute = { italic = true }, -- attribute of tag in reactjs
                },
                filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
                -- Enable this will disable filter option
                day_night = {
                    enable = false, -- turn off by default
                    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
                    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
                },
                inc_search = "background", -- underline | background
                background_clear = {
                    -- "float_win",
                    "toggleterm",
                    "telescope",
                    -- "which-key",
                    "renamer",
                    "notify",
                    -- "nvim-tree",
                    -- "neo-tree",
                    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
                },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
                plugins = {
                    bufferline = {
                        underline_selected = false,
                        underline_visible = false,
                    },
                    indent_blankline = {
                        context_highlight = "default", -- default | pro
                        context_start_underline = false,
                    },
                },
            })
            vim.cmd("colorscheme monokai-pro-machine") -- Set as default colorscheme
        end
    },
}

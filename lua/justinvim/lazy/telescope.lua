return {
    "nvim-telescope/telescope.nvim",


    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')

        -- search files
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        -- git tracked files
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        -- search word under cursor
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        -- search word(plus non-blank char) under cursor
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        -- search files using grep
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        -- search help tags
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}

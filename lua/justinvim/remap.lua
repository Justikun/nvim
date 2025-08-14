-- remap.lua

-- Set leader key
vim.g.mapleader = " "

-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Clear search highlight on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Visual and block mode: paste without overwriting register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to Neovim clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Yank to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without overwriting register
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Buffer-wide word replacement
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Swap to alternate file
vim.keymap.set("n", "<C-o>", "<C-^>")

-- GoLang err snippet
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- LSP hover
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set('n', '<C-j>', vim.diagnostic.goto_next)
vim.keymap.set('n', '<C-k>', vim.diagnostic.goto_prev)

-- Diagnostics location list and quickfix
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

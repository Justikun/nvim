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
vim.keymap.set("i", "<C-o>", "<C-^>")

-- GoLang err snippet
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
vim.keymap.set(
  "n",
  "<leader>er",
  "oif err != nil { return err }<Esc>"
)
vim.keymap.set(
    "n",
    "<leader>ef",
    "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
)

-- LSP hover
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- Quickfix navigation
vim.keymap.set('n', '<C-j>', vim.diagnostic.goto_next)
vim.keymap.set('n', '<C-k>', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>qj', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>qk', vim.diagnostic.goto_prev)

-- Diagnostics location list and quickfix
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- These only work when running inside VSCode Neovim
if vim.g.vscode then
  local vscode = require("vscode")

  -- Next diagnostic
  vim.keymap.set("n", "<leader>qj", function()
    vscode.action("editor.action.marker.nextInFiles")
  end, { desc = "Go to next diagnostic (VS Code)" })

  -- Previous diagnostic
  vim.keymap.set("n", "<leader>qk", function()
    vscode.action("editor.action.marker.prevInFiles")
  end, { desc = "Go to previous diagnostic (VS Code)" })
end

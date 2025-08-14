vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
 -- clear / search on <Esc>
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- visual & vblock. replace text -> don't overwrite register
vim.keymap.set("x", "<leader>p", [["_dP]])
-- yank text to nvim clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank text to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete -> don't overwrite register
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")--
-- quickfix
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- cnext for quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz") -- cnext for quickfix
-- buffer-wide word replacement
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- swap file
vim.keymap.set("n", "<C-o>", "<C-^>")
-- GoLang err snippet
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear / search on <Esc>

-- visual & vblock. replace text -> don't overwrite register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank text -> system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank to end of line -> system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete -> don't overwrite register
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")--

-- quickfix
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- cnext for quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz") -- cnext for quickfix

-- buffer-wide word replacemend
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- new line
vim.keymap.set("n", "O", "o<Esc>", { noremap = true })

-- swap file
vim.keymap.set("n", "<C-o>", "<C-^>")

-- GoLang Snippet
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

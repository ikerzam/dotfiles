require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "x", "v" }, "<leader>ca", function()
  require("tiny-code-action").code_action()
end, { noremap = true, silent = true, desc = "Show Code Actions" })
map({ "n", "x", "v" }, "<leader>gd", function()
  require("gitsigns").diffthis()
end, { noremap = true, silent = true, desc = "Show Buffer Diff" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

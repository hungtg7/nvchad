require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "fd", "<ESC>")
-- Jump faster
map("n", "L", "$")
map("n", "H", "^")


-- tabufline
if require("nvconfig").ui.tabufline.enabled then
  map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

  map("n", "<tab>", function()
    require("nvchad.tabufline").next()
  end, { desc = "buffer goto next" })

  map("n", "<S-tab>", function()
    require("nvchad.tabufline").prev()
  end, { desc = "buffer goto prev" })

  map("n", "<leader>q", function()
    require("nvchad.tabufline").close_buffer()
  end, { desc = "buffer close" })
end


-- Comment
-- This will delete the keymap that NvChad created by default.
vim.keymap.del("n", "<leader>/")
vim.keymap.del("v", "<leader>/")


-- telescope
map("n", "<leader>/", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader><tab>", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>f", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>p", "<cmd>Telescope projects<cr>", { desc = "telescope projects" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

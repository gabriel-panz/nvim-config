local function invokeCodeActions()
	vim.lsp.buf.code_action()
end

local function openDiagnostics()
	vim.diagnostic.open_float()
end

vim.keymap.set("n", "<leader>.", invokeCodeActions, { desc = "show code actions" })
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "open explorer in current pwd" })
vim.keymap.set("n", "<leader>dd", openDiagnostics, { desc = "open diagnostics in a window" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "copy to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "paste from clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "copy to clipboard" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "paste from clipboard" })
vim.keymap.set("n", "<leader>tf", "<Cmd>NvimTreeFindFile<CR>", { desc = "Find current buffer in NvimTree" })

vim.keymap.set("n", "<leader>tt", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

vim.keymap.set(
	"n",
	"<leader>wt",
	"<C-w>s<Cmd>ter<CR><Cmd>res 12<CR><Insert>",
	{ desc = "opens terminal as a window below in insert mode" }
)

vim.keymap.set("v", "<leader>t", "<Cmd>norm 0i	<CR>", { desc = "Add a tab" })

-- Git
vim.keymap.set("n", "<leader>gb", "<Cmd>Gitsigns blame<CR>", { desc = "[G]it [B]lame file" })
vim.keymap.set("n", "<leader>gl", "<Cmd>Gitsigns blame_line<CR>", { desc = "[G]it [B]lame line" })

-- Annotations
--require('annotate').create_annotation()
vim.keymap.set("n", "<leader>An", require("annotate").create_annotation, { desc = "[A]dd [N]ote" })

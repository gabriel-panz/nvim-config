-- filtype mapping
vim.filetype.add({
	extension = {
		mcmeta = "json",
		mcfunction = "mcfunction",
	},
})
require("plugins.nvim-tree")

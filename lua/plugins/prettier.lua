vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.ts|js",
	callback = function()
		local out = vim.fn.system("prettier --check --write" .. vim.fn.expand("%"))
		vim.print(out)
	end,
})

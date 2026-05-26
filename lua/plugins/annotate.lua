---@type LazySpec
return {
	"winter-again/annotate.nvim",
	dependencies = { "kkharji/sqlite.lua" },
	config = function()
		require("annotate").setup({
			-- path for the sqlite db file
			db_uri = vim.fn.stdpath("data") .. "/annotations_db",
			-- sign column symbol to use
			annot_sign = "󰍕",
			-- highlight group for symbol
			annot_sign_hl = "Comment",
			-- highlight group for currently active annotation
			annot_sign_hl_current = "FloatBorder",
			-- width of floating annotation window
			annot_win_width = 25,
			-- padding to the right of the floating annotation window
			annot_win_padding = 2,
		})
	end,
}

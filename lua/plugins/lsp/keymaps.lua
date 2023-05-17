local config = {}

function config.on_attach(_, buffer)
	local remap = function(keys, func, desc, mode)
		desc = "LSP: " .. desc
		mode = mode or "n"

		vim.keymap.set(mode, keys, func, { buffer = buffer, desc = desc })
	end

	remap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
	remap("K", vim.lsp.buf.hover, "Hover documentation")
	remap("<C-h>", vim.lsp.buf.signature_help, "Signature [H]elp", "i")

	remap("[d", vim.diagnostic.goto_next, "Go to next diagnostic message")
	remap("]d", vim.diagnostic.goto_prev, "Go to previous diagnostic message")
	remap("<leader>od", vim.diagnostic.open_float, "Open floating diagnostic message")

	remap("<leader>ws", vim.lsp.buf.workspace_symbol, "[W]orkspace [S]ymbols")
	remap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
	remap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
	remap("<leader>rr", vim.lsp.buf.references, "[R]efe[r]ences")

	vim.api.nvim_buf_create_user_command(buffer, "Format", function(_)
		vim.lsp.buf.format()
	end, { desc = "Format current buffer with LSP" })
end

return config

return {
    {
        "numToStr/Comment.nvim",
        opts = {
            mappings = false,
        },
        config = function()
            local comment_api = require("Comment.api")

            vim.keymap.set({ "n", "x" }, "<C-_>", function()
                if vim.fn.mode() == "n" then
                    comment_api.toggle.linewise.current()
                else
                    local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
                    vim.api.nvim_feedkeys(esc, "nx", false)
                    comment_api.toggle.linewise(vim.fn.visualmode())
                end
            end)
        end,
    },
}

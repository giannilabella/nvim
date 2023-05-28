return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        opts = {
            style = "night",
            transparent = true,
            terminal_colors = true,
            styles ={
                sidebars = "dark",
                floats = "dark",
            },
            on_highlights = function(highlights, _)
                highlights.LineNr = {
                    fg = "#71839b",
                }
            end,
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight")
        end,
    },
}

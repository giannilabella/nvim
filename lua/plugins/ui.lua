return {
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                icons_enabled = false,
                theme = "carbonfox",
                component_separators = "|",
                section_separators = "",
            },
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        opts = {
            char = "┊",
            show_trailing_blankline_indent = false,
        },
    },
}

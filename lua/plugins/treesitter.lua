return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "rust",
                "javascript",
                "typescript",
                "python"
            },
            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        },
    },
}

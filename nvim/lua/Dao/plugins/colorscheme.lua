return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            compile = false,
            undercurl = true,
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,
            dimInactive = false,
            terminalColors = true,
            colors = {
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors)
                return {}
            end,
            theme = "wave",
            background = {
                dark = "wave",
                light = "lotus",
            },
        })

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
    end,
}


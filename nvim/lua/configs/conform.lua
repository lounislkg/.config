local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettierd" },
        html = { "prettierd" },
        javascript = { "prettierd" },
        json = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        python = { "black" },
    },
    formatters = {
        prettierd = {
            -- Use a specific prettier parser for a filetype
            -- Otherwise, prettier will try to infer the parser from the file name
            ft_parsers = {
                javascript = "babel",
                javascriptreact = "babel",
                typescript = "typescript",
                typescriptreact = "typescript",
                vue = "vue",
                css = "css",
                scss = "scss",
                less = "less",
                html = "html",
                json = "json",
                jsonc = "json",
                yaml = "yaml",
                markdown = "markdown",
                ["markdown.mdx"] = "mdx",
                graphql = "graphql",
                handlebars = "glimmer",
            },
            -- Use a specific prettier parser for a file extension
            ext_parsers = {
                -- qmd = "markdown",
            },
            --tab ne sert a rien (il marche pas)
            args = { "--stdin-from-filename", "$FILENAME" },
            inherit = true,
            -- When inherit = true, add these additional arguments to the beginning of the command.
            -- This can also be a function, like args
            prepend_args = { "--use-tabs" },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options

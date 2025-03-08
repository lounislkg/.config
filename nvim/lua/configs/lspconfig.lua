require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "jsonls", "yamlls", "bashls", "tailwindcss", "emmet_ls" }
local nvlsp = require("nvchad.configs.lspconfig")

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    })
end

lspconfig.ts_ls.setup({
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
})
--si il y a une galère avec le lsp, aller voir la video de programming rainbow timer 1:00:00 pour les explications il eu besoins d'edit les defaults configs pour que ça marche

-- Configuration des diagnostics (LSP/Linters)
local M = {}

M.setup = function()
    vim.diagnostic.config({
        virtual_text = false,
        signs = true, -- ✅ Garde les icônes dans la colonne de gauche
        underline = true, -- ✅ Continue de souligner les erreurs
        float = {
            border = "rounded", -- ✅ Bordure stylisée pour la fenêtre flottante
            source = true, -- ✅ Affiche la source de l'erreur
            max_width = 80, -- ✅ Empêche la fenêtre de diagnostic de s'étendre trop large
            focusable = false, -- ✅ Évite que la fenêtre flotte bloque le focus
        },
        update_in_insert = false,
    })

    -- ✅ Active le retour à la ligne dans les fenêtres de diagnostic
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "vim.diagnostic.float",
        callback = function()
            vim.wo.wrap = true
        end,
    })
    vim.api.nvim_create_autocmd("CursorHold", {
        pattern = "*",
        callback = function()
            vim.diagnostic.open_float(nil, { focus = false }) -- ✅ Affiche les messages flottants
        end,
    })
end

return M

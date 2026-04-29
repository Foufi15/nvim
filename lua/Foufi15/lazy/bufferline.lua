return {
    'akinsho/bufferline.nvim',
    -- Dépendances : nvim-web-devicons est nécessaire pour les icônes de fichiers.
    dependencies = 'nvim-tree/nvim-web-devicons', 
    version = "*",

    config = function()
        require("bufferline").setup({
            options = {
                -- Mode d'affichage : utilise la gestion native des buffers de Neovim
                mode = "buffers",
                
                -- Style des séparateurs entre les onglets
                separator_style = "slant", 
                
                -- N'affiche pas les icônes de fermeture sur les buffers (moins encombrant)
                show_buffer_close_icons = false,
                show_close_icon = false,
                
                -- Définit un petit décalage pour laisser de la place à gauche
                offsets = {
                    {
                        filetype = "NvimTree", -- Si NeoTree est ouvert
                        text = " File Explorer ",
                        text_align = "left",
                        separator = true
                    }
                },
                
                -- Ne pas afficher la liste des numéros (plus propre)
                numbers = "none", 
                
                -- Met en évidence le buffer actif
                always_show_bufferline = true,
            },

            -- Styles personnalisés pour le surlignage (ajustez ces couleurs selon votre thème)
            -- highlights = {
            --    fill = { fg = '#565A69', bg = '#282C34' },
            --    buffer_selected = { bold = true, fg = '#FFFFFF', bg = '#282C34' },
            --    buffer_visible = { fg = '#90A3B5', bg = '#282C34' },
            --    close_icon = { fg = '#E06C75', bg = '#282C34' },
            --}
        })

        -- Raccourcis de navigation rapide (ESSENTIEL)
        local map = vim.keymap.set
        
        -- Naviguer au buffer suivant (<leader>l)
        map('n', '<S-L>', ':BufferLineCycleNext<CR>', { desc = 'Buffer Suivant' })
        
        -- Naviguer au buffer précédent (<leader>h)
        map('n', '<S-H>', ':BufferLineCyclePrev<CR>', { desc = 'Buffer Précédent' })
        
        -- Fermer le buffer courant (<leader>c)
        map('n', '<S-C>', ':BufferLineClose<CR>', { desc = 'Fermer Buffer' })
        
    end,
}

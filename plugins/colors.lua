function ColorMyPencil(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    local groups = {
        'Normal', 'NormalNC', 'NormalFloat', 'FloatBorder', 'FloatTitle', 'TelescopeBorder'
    }
    for _, item in ipairs(groups) do
        --vim.cmd("hi " .. item .. " ctermbg=none guibg=none")--
        vim.api.nvim_set_hl(0, item, { bg = "none" })
    end
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                styles = { italic = false, }
            })
            ColorMyPencil()
        end
    }
}

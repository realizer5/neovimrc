return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
        local filename = vim.fn.expand('%:p')
        local filesize = vim.fn.getfsize(filename)

        -- If the file size is greater than 100 KB (102400 bytes), return early
        if filesize > 102400 then
            vim.notify(
                "File larger than 100KB indent-blankline disabled for performance",
                vim.log.levels.WARN,
                { title = "indent-blankline" }
            )
            return
        end
        require("ibl").setup()
    end
}

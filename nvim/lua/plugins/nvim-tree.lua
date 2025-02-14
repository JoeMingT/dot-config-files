return {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("nvim-tree").setup({
            hijack_cursor = true,
            disable_netrw = true,
            sync_root_with_cwd = true,
            view = {
                preserve_window_proportions = true
            },
            renderer = {
                highlight_git = true,
                indent_markers = { enable = true },
                icons = {
                    glyphs = {
                        git = { unmerged = "" },
                    },
                },
                highlight_opened_files = "name"
            }
        })
    end
}

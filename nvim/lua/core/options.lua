-- Vim Settings and Options

-- Hint: use `:h <option>` to figure out the meaning if needed
-- Clipboard
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 

-- Auto Completion Menu
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Mouse options
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 2              -- number of visual spaces per TAB
vim.opt.softtabstop = -1             -- number of spacesin tab when editing
vim.opt.shiftwidth = 0              -- insert 4 spaces on a tab
vim.opt.expandtab = true            -- tabs are spaces, mainly because of python
vim.opt.autoindent = true	    -- Copy indent of current line into new line
vim.opt.smartindent = true	    -- If new bracket layer, auto indent one more layer
vim.opt.shiftround = true
vim.cmd('filetype plugin indent on')	-- use language‐specific plugins for indenting (better)

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.relativenumber = true       -- add numbers to each line on the left side
vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true           -- open new vertical split bottom
vim.opt.splitright = true           -- open new horizontal splits right
vim.opt.termguicolors = true        -- enabl 24-bit RGB color in the TUI
vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint
vim.opt.wildmode = 'longest,list'   -- Displaying the :command autocomplete menu
vim.opt.ttyfast = true		    -- Scrolling faster
vim.cmd('syntax enable')
vim.opt.wrap = false

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = true            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

-- Backup location
vim.opt.backupdir = vim.env.XDG_CONFIG_HOME or vim.env.HOME .. "/.cache/nvim"

-- Undo Related
vim.opt.undofile = true
vim.opt.undodir = vim.env.XDG_CONFIG_HOME or vim.env.HOME .. "/.cache/nvim"

-- Compatible with old vim versions
vim.opt.compatible = false

-- Automation
vim.opt.autoread = true

-- Movement
vim.opt.iskeyword = "@, 48-57, _, 192-255"

-- For Edgy.nvim
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
-- Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `splitkeep` to either `screen` or `topline`.
vim.opt.splitkeep = "screen"

-- Theme Settings
-- Placed here because these themes are PLUGINS
-- and is required to be placed AFTER Lazy has loaded said plugins
-- vim.cmd('colorscheme tokyonight')
vim.cmd('colorscheme dracula')
vim.opt.background = 'dark'
vim.opt.termguicolors = true --24-bit color scheme

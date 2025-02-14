--  _   _                 _            
-- | \ | | ___  _____   _(_)_ __ ___   
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  
-- | |\  |  __/ (_) \ V /| | | | | | | 
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_| 
--                                     
-- by Stephan Raabe (2023) 
-- ----------------------------------------------------- 
-- Function to check modules
local function has_module(name)
  if pcall(function() require(name) end) then
    return true
  else
    return false
  end
end

-- For nvim-tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set leader key
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


if has_module("config.lazy") then
  require("config.lazy")
end

if has_module("config.nvim-airline") then
  require("config.nvim-airline")
end

if has_module("core.keymaps") then
    require("core.keymaps")
end

if has_module("core.options") then
    require("core.options")
end

if has_module("core.autocommands") then
    require("core.autocommands")
end

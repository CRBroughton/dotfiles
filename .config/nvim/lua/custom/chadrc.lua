---@type ChadrcConfig
local mason = require("custom.configs.overrides").mason
local treesitter = require("custom.configs.overrides").treesitter

local M = {}

M.ui = { theme = 'radium' }
M.plugins = 'custom.plugins'
return M
local M = {}

M.treesitter = {
    ensure_installed = {
        "lua",
        "lua",
        "typescript",
        "go",
    }
}

M.mason = {
    ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "vue-language-server",
        "gopls",
    }
}

return M

-- npm i -g vscode-langservers-extracted 
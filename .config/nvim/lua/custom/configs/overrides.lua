local M = {}

M.treesitter = {
    ensure_installed = {
        "lua",
        "typescript",
        "tailwind",
        "go",
    }
}

M.mason = {
    ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "vue-language-server",
        "tailwindcss-language-server",
        "gopls",
    }
}

return M

-- npm i -g vscode-langservers-extracted 
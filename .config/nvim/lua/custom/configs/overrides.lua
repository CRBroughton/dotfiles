local M = {}

M.treesitter = {
    ensure_installed = {
        "lua",
        "vue",
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
        "eslint-lsp",
        "gopls",
    }
}

return M

-- npm i -g vscode-langservers-extracted 
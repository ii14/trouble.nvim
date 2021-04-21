local M = {}

M.namespace = vim.api.nvim_create_namespace('LspTrouble')

---@class Options
local defaults = {
    height = 10,
    icons = true,
    fold_open = "",
    fold_closed = "",
    actions = {
        ["<cr>"] = "jump",
        q = "close",
        r = "refresh",
        zR = "open_folds",
        zM = "close_folds",
        p = "preview",
        P = "toggle_preview"
    },
    auto_open = false,
    auto_close = true,
    auto_preview = false
}

---@type Options
M.options = {}

---@return Options
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
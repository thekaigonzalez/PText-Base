--- Hooks are local events that are handled based on your PTEX implementation.

Hooks = {}

local slf = {}

--- Adds a hook to the "Hooks" table
---@param hookname string
---@param base function
function slf:Add(hookname, base)

    if not type(base) == "function" then return end

    Hooks[hookname] = {}
    Hooks[hookname].init = base
end

return slf
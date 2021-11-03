--- Events are special to your PTEX implementation.
--- Events Run hooks which run functions.

local event = {}
local error = require "PTex.error"

---Run event `hookname`.
---@param hookname string
---@param cook any
function event:Run(hookname, cook)
    if not type(hookname) == "function" then return end

    return Hooks[hookname].init(cook)
end

function event:IsValid(hookname)
    if Hooks[hookname] == nil then
        return false
    else
        return true
    end
end

---Error if the desired hook `hookname` does not exist.
---@param hookname string
---@return nil
function event:AssertNot(hookname)
    if Hooks[hookname] == nil then
        return event:Run("onAssertionError", "find " .. hookname)
    else
        return true
    end
end

return event
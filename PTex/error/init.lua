--- Error events.
--- Once this is included it adds 3 new hooks, `onError`, `onAssertionError`, `onBaseError`.

local hook = require "PTex.hook"

hook:Add("onError", function(msg)
    error("error: " .. msg);
end)

hook:Add("onAssertionError", function(msg)
    error("assertion failed! " .. msg)
end)

hook:Add("onBaseError", function(msg)
    error("base: error: " .. msg)
end)
require "PTex"

--- Create a new Hook called "NameHook"
hook:Add("NameHook", function(name)
    --- Print hello and the name, the name should be a valid argument
    print("hello " .. name)
end)

--- make sure error things are working
event:AssertNot("onBaseError");
event:AssertNot("onAssertionError");
event:AssertNot("onError")

--- Error if the name hook does not exist
-- event:AssertNot("NameHook")

if event:IsValid("NameHook") then
    event:Run("NameHook", "help");
end
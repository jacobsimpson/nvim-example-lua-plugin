local function lua_function()
    print "nvim-example-lua-plugin.myluamodule.init lua_function: hello"
end

-- Returning a Lua table at the end allows fine control of the symbols that
-- will be available outside this file. By returning the table, it allows the
-- importer to decide what name to use in their own code.
--
-- Examples:
--    local mine = require('myluamodule')
--    mine.lua_function()
--    local myluamodule = require('myluamodule')
--    myluamodule.lua_function()
return {
    lua_function = lua_function,
}


" The VimL/VimScript code is included in this sample plugin to demonstrate the
" two different approaches but it is not required you use VimL. Feel free to
" delete this code and proceed without it.

echo "Starting the example Lua Plugin"

function LuaDoItVimL()
    echo "hello from nvim-example-lua-plugin.LuaDoItVimL"
endfunction

lua <<EOF

function LuaDoItLua()
    print("hello from nvim-example-lua-plugin.LuaDoItLua")
end

print "nvim-example-lua-plugin.vim: Lua code executing."
require("lua.luamodule.init").showstuff()

EOF

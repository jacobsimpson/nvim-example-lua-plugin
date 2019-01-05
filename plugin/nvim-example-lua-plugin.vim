
" The VimL/VimScript code is included in this sample plugin to demonstrate the
" two different approaches but it is not required you use VimL. Feel free to
" delete this code and proceed without it.

"echo "nvim-example-lua-plugin.vim: VimL code executing."

function LuaDoItVimL()
    echo "nvim-example-lua-plugin.vim LuaDoItVimL(): hello"
endfunction

lua <<EOF

-- Lua code can be embedded in a VimL file by using a lua block.

function LuaDoItLua()
    print("nvim-example-lua-plugin.vim LuaDoItLua(): hello")
end

print "nvim-example-lua-plugin.vim: Lua code executing."
require("luamodule.init").showstuff()

EOF

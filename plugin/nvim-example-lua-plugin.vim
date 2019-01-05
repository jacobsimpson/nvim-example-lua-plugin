
" The VimL/VimScript code is included in this file to demonstrate that the
" file is being loaded. It is not required for the Lua code to execute and can
" be deleted.

echo "nvim-example-lua-plugin.vim: VimL code executing."

function LuaDoItVimL()
    echo "nvim-example-lua-plugin.vim LuaDoItVimL(): hello"
endfunction


" Neovim knows about finding VimL files in the `plugin` directory, but it
" won't find Lua files in the same location. So, you need to bootstrap your
" Loa code using a VimL file. There are two possibilities:

" 1. Lua code can be embedded in a VimL file by using a lua block.
lua <<EOF
    print "nvim-example-lua-plugin.vim: Lua code executing."

    function LuaDoItLua()
        print("nvim-example-lua-plugin.vim LuaDoItLua(): hello")
    end
EOF

" 2. Lua code can be built in a pure Lua file and imported as a module from
" the VimL file.
lua require("luamodule.init").showstuff()

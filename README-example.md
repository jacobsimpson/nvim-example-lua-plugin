# nvim-example-lua-plugin

This is a simple Neovim plugin to print stuff when `nvim` is starting up.

## Installation

### NeoBundle

An example of how to load this plugin in NeoBundle:

```VimL
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

    " Let NeoBundle manage NeoBundle
    " Required:
    NeoBundleFetch 'Shougo/neobundle.vim'

    " You probably have a number of other plugins listed here.

    " Add this line to make your new plugin load, assuming you haven't renamed it.
    NeoBundle 'nvim-example-python-plugin'
call neobundle#end()
```

### vim-plug

An example of how to load this plugin using vim-plug:

```VimL
Plug 'jacobsimpson/nvim-example-python-plugin'
```

After running `:PlugInstall`, the files should appear in your `~/.config/nvim/plugged` directory (or whatever path you have configured for plugins).


#! /bin/bash

dst=./nvim-example-lua-plugin
if [[ ! -z $1 ]]; then
    dst=$1
    name=$(basename $1)
fi

mkdir -p "$dst"

git clone --depth 1 \
    https://github.com/jacobsimpson/nvim-example-lua-plugin \
    "$dst"
rm -Rf "$dst/.git" "$dst/install.sh" "$dst/README.asciidoc"
mv "$dst/README-example.md" "$dst/README.md"

if [[ ! -z $name ]]; then
    mv "$dst/plugin/nvim-example-lua-plugin.vim" "$dst/plugin/$name.vim"
    for f in $(find "$dst" -type f); do
        printf ",s/nvim-example-lua-plugin/$dst/g\nw\n" | ed "$f" >& /dev/null
    done
fi

echo "
To try out your new plugin locally, use:

nvim --cmd 'set rtp+=$dst'

To use it after uploading to Github, add the necessary plugin load command to
your Neovim config files.

Example - using Packer plugin manager, with the plugin installed locally:

use '$dst'

Example - using vim-plug plugin manager, after the new plugin has been uploaded to Github:

Plug '<github-username>/${name}'

"

#!/usr/bin/env nu

def update_config [src, dest] {
    let files = (ls $"($src)/**/*" | where type == file )
    let dest_files = ( $files | each {
        |it| $"($dest | path expand)/( $it.name | path relative-to $src)"
    } | split column "\n" dest_name)
    let con = ($files | merge {$dest_files})

    ($con | each {
        |it| if not ($it.dest_name | path dirname | path exists) {
            ^mkdir -p ($it.dest_name | path dirname)
            }
    })
    ($con | each {
        |it| if not ( $it.dest_name | path exists ) {
            echo $"($it.dest_name) not found in destination, updating..."
            ^cp $it.name $it.dest_name
        } else {
            if ($it.modified > ((ls $it.dest_name).modified.0)) {
                echo "src file is newer"
                ^cp $it.name $it.dest_name
            }
        }
    })
}

update_config "neovim/neovim" "~/.config/nvim"
update_config "neovim/snippets" "~/.config/nvim/plugged/vim-snippets/UltiSnips"

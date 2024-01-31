au BufRead,BufNewFile *.csv set filetype=csv

func! s:init_groups_from_colors()
    let colors = [ 'red', 'green', 'yellow', 'NONE', 'blue', 'magenta', 'cyan', 'white' ]
    for ci in range(len(colors))
        let cmd = 'highlight column%d ctermfg=%s guifg=%s'
        exe printf(cmd, ci, colors[ci], colors[ci])
        let cmd = 'highlight escaped_column%d ctermfg=%s guifg=%s'
        exe printf(cmd, ci, colors[ci], colors[ci])
    endfor
endfunc

call s:init_groups_from_colors()

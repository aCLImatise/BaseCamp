class: CommandLineTool
id: vdir.cwl
inputs:
- id: in_all
  doc: do not ignore entries starting with .
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_almost_all
  doc: do not list implied . and ..
  type: boolean?
  inputBinding:
    prefix: --almost-all
- id: in_author
  doc: with -l, print the author of each file
  type: boolean?
  inputBinding:
    prefix: --author
- id: in_escape
  doc: print C-style escapes for nongraphic characters
  type: boolean?
  inputBinding:
    prefix: --escape
- id: in_block_size
  doc: "with -l, scale sizes by SIZE when printing them;\ne.g., '--block-size=M';\
    \ see SIZE format below"
  type: long?
  inputBinding:
    prefix: --block-size
- id: in_ignore_backups
  doc: do not list implied entries ending with ~
  type: boolean?
  inputBinding:
    prefix: --ignore-backups
- id: in_sort_by_ctime
  doc: "with -lt: sort by, and show, ctime (time of last\nmodification of file status\
    \ information);\nwith -l: show ctime and sort by name;\notherwise: sort by ctime,\
    \ newest first"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_list_entries_columns
  doc: list entries by columns
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_color
  doc: "[=WHEN]         colorize the output; WHEN can be 'always' (default\nif omitted),\
    \ 'auto', or 'never'; more info below"
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_directory
  doc: list directories themselves, not their contents
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_dired
  doc: generate output designed for Emacs' dired mode
  type: boolean?
  inputBinding:
    prefix: --dired
- id: in_sort_enable_au
  doc: do not sort, enable -aU, disable -ls --color
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_classify
  doc: append indicator (one of */=>@|) to entries
  type: boolean?
  inputBinding:
    prefix: --classify
- id: in_file_type
  doc: likewise, except do not append '*'
  type: boolean?
  inputBinding:
    prefix: --file-type
- id: in_format
  doc: "across -x, commas -m, horizontal -x, long -l,\nsingle-column -1, verbose -l,\
    \ vertical -C"
  type: long?
  inputBinding:
    prefix: --format
- id: in_full_time
  doc: like -l --time-style=full-iso
  type: boolean?
  inputBinding:
    prefix: --full-time
- id: in_l_list_owner
  doc: like -l, but do not list owner
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_group_directories_first
  doc: "group directories before files;\ncan be augmented with a --sort option, but\
    \ any\nuse of --sort=none (-U) disables grouping"
  type: boolean?
  inputBinding:
    prefix: --group-directories-first
- id: in_no_group
  doc: in a long listing, don't print group names
  type: boolean?
  inputBinding:
    prefix: --no-group
- id: in_si
  doc: likewise, but use powers of 1000 not 1024
  type: boolean?
  inputBinding:
    prefix: --si
- id: in_dereference_command_line
  doc: follow symbolic links listed on the command line
  type: boolean?
  inputBinding:
    prefix: --dereference-command-line
- id: in_dereference_command_line_symlink_to_dir
  doc: "follow each command line symbolic link\nthat points to a directory"
  type: boolean?
  inputBinding:
    prefix: --dereference-command-line-symlink-to-dir
- id: in_hide
  doc: "do not list implied entries matching shell PATTERN\n(overridden by -a or -A)"
  type: string?
  inputBinding:
    prefix: --hide
- id: in_hyperlink
  doc: "[=WHEN]     hyperlink file names; WHEN can be 'always'\n(default if omitted),\
    \ 'auto', or 'never'"
  type: boolean?
  inputBinding:
    prefix: --hyperlink
- id: in_indicator_style
  doc: append / indicator to directories
  type: string?
  inputBinding:
    prefix: --indicator-style
- id: in_inode
  doc: print the index number of each file
  type: boolean?
  inputBinding:
    prefix: --inode
- id: in_ignore
  doc: do not list implied entries matching shell PATTERN
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_kib_i_bytes
  doc: "default to 1024-byte blocks for disk usage;\nused only with -s and per directory\
    \ totals"
  type: boolean?
  inputBinding:
    prefix: --kibibytes
- id: in_use_listing_format
  doc: use a long listing format
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_dereference
  doc: "when showing file information for a symbolic\nlink, show information for the\
    \ file the link\nreferences rather than for the link itself"
  type: boolean?
  inputBinding:
    prefix: --dereference
- id: in_fill_width_comma
  doc: fill width with a comma separated list of entries
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_numeric_uid_gid
  doc: like -l, but list numeric user and group IDs
  type: boolean?
  inputBinding:
    prefix: --numeric-uid-gid
- id: in_literal
  doc: print entry names without quoting
  type: boolean?
  inputBinding:
    prefix: --literal
- id: in_l_list_group
  doc: like -l, but do not list group information
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_hide_control_chars
  doc: print ? instead of nongraphic characters
  type: boolean?
  inputBinding:
    prefix: --hide-control-chars
- id: in_show_control_chars
  doc: "show nongraphic characters as-is (the default,\nunless program is 'ls' and\
    \ output is a terminal)"
  type: boolean?
  inputBinding:
    prefix: --show-control-chars
- id: in_quote_name
  doc: enclose entry names in double quotes
  type: boolean?
  inputBinding:
    prefix: --quote-name
- id: in_quoting_style
  doc: "use quoting style WORD for entry names:\nliteral, locale, shell, shell-always,\n\
    shell-escape, shell-escape-always, c, escape\n(overrides QUOTING_STYLE environment\
    \ variable)"
  type: string?
  inputBinding:
    prefix: --quoting-style
- id: in_reverse
  doc: reverse order while sorting
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_recursive
  doc: list subdirectories recursively
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_size
  doc: print the allocated size of each file, in blocks
  type: boolean?
  inputBinding:
    prefix: --size
- id: in_sort_file_size
  doc: sort by file size, largest first
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_sort
  doc: "sort by WORD instead of name: none (-U), size (-S),\ntime (-t), version (-v),\
    \ extension (-X)"
  type: long?
  inputBinding:
    prefix: --sort
- id: in_time
  doc: "with -l, show time as WORD instead of default\nmodification time: atime or\
    \ access or use (-u);\nctime or status (-c); also use specified time\nas sort\
    \ key if --sort=time (newest first)"
  type: string?
  inputBinding:
    prefix: --time
- id: in_time_style
  doc: time/date format with -l; see TIME_STYLE below
  type: string?
  inputBinding:
    prefix: --time-style
- id: in_sort_modification_time
  doc: sort by modification time, newest first
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_tab_size
  doc: assume tab stops at each COLS instead of 8
  type: long?
  inputBinding:
    prefix: --tabsize
- id: in_sort_by_access
  doc: "with -lt: sort by, and show, access time;\nwith -l: show access time and sort\
    \ by name;\notherwise: sort by access time, newest first"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_sort_list_entries
  doc: do not sort; list entries in directory order
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_natural_sort_version
  doc: natural sort of (version) numbers within text
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_width
  doc: set output width to COLS.  0 means no limit
  type: long?
  inputBinding:
    prefix: --width
- id: in_list_entries_lines
  doc: list entries by lines instead of by columns
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_sort_alphabetically_entry
  doc: sort alphabetically by entry extension
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_context
  doc: print any security context of each file
  type: boolean?
  inputBinding:
    prefix: --context
- id: in_list_one_file
  doc: list one file per line.  Avoid '\n' with -q or -b
  type: boolean?
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vdir

class: CommandLineTool
id: ls.cwl
inputs:
- id: author
  doc: with -l, print the author of each file
  type: boolean
  inputBinding:
    prefix: --author
- id: escape
  doc: print C-style escapes for nongraphic characters
  type: boolean
  inputBinding:
    prefix: --escape
- id: block_size
  doc: scale sizes by SIZE before printing them; e.g., '--block-size=M' prints sizes
    in units of 1,048,576 bytes; see SIZE format below
  type: long
  inputBinding:
    prefix: --block-size
- id: ignore_backups
  doc: do not list implied entries ending with ~
  type: boolean
  inputBinding:
    prefix: --ignore-backups
- id: c
  doc: 'with -lt: sort by, and show, ctime (time of last modification of file status
    information); with -l: show ctime and sort by name; otherwise: sort by ctime,
    newest first'
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: list entries by columns
  type: boolean
  inputBinding:
    prefix: -C
- id: color
  doc: "[=WHEN]         colorize the output; WHEN can be 'always' (default if omitted),\
    \ 'auto', or 'never'; more info below"
  type: boolean
  inputBinding:
    prefix: --color
- id: directory
  doc: list directories themselves, not their contents
  type: boolean
  inputBinding:
    prefix: --directory
- id: dired
  doc: generate output designed for Emacs' dired mode
  type: boolean
  inputBinding:
    prefix: --dired
- id: f
  doc: do not sort, enable -aU, disable -ls --color
  type: boolean
  inputBinding:
    prefix: -f
- id: classify
  doc: append indicator (one of */=>@|) to entries
  type: boolean
  inputBinding:
    prefix: --classify
- id: file_type
  doc: likewise, except do not append '*'
  type: boolean
  inputBinding:
    prefix: --file-type
- id: format
  doc: across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l,
    vertical -C
  type: string
  inputBinding:
    prefix: --format
- id: full_time
  doc: like -l --time-style=full-iso
  type: boolean
  inputBinding:
    prefix: --full-time
- id: g
  doc: like -l, but do not list owner
  type: boolean
  inputBinding:
    prefix: -g
- id: group_directories_first
  doc: group directories before files; can be augmented with a --sort option, but
    any use of --sort=none (-U) disables grouping
  type: boolean
  inputBinding:
    prefix: --group-directories-first
- id: no_group
  doc: in a long listing, don't print group names
  type: boolean
  inputBinding:
    prefix: --no-group
- id: si
  doc: likewise, but use powers of 1000 not 1024
  type: boolean
  inputBinding:
    prefix: --si
- id: dereference_command_line
  doc: follow symbolic links listed on the command line
  type: boolean
  inputBinding:
    prefix: --dereference-command-line
- id: dereference_command_line_symlink_to_dir
  doc: follow each command line symbolic link that points to a directory
  type: boolean
  inputBinding:
    prefix: --dereference-command-line-symlink-to-dir
- id: hide
  doc: do not list implied entries matching shell PATTERN (overridden by -a or -A)
  type: string
  inputBinding:
    prefix: --hide
- id: indicator_style
  doc: 'append indicator with style WORD to entry names: none (default), slash (-p),
    file-type (--file-type), classify (-F)'
  type: string
  inputBinding:
    prefix: --indicator-style
- id: inode
  doc: print the index number of each file
  type: boolean
  inputBinding:
    prefix: --inode
- id: ignore
  doc: do not list implied entries matching shell PATTERN
  type: string
  inputBinding:
    prefix: --ignore
- id: kib_i_bytes
  doc: default to 1024-byte blocks for disk usage
  type: boolean
  inputBinding:
    prefix: --kibibytes
- id: l
  doc: a long listing format
  type: string
  inputBinding:
    prefix: -l
- id: dereference
  doc: showing file information for a symbolic link, show information for the file
    the link references rather than for the link itself
  type: string
  inputBinding:
    prefix: --dereference
- id: m
  doc: width with a comma separated list of entries
  type: string
  inputBinding:
    prefix: -m
- id: numeric_uid_gid
  doc: like -l, but list numeric user and group IDs
  type: boolean
  inputBinding:
    prefix: --numeric-uid-gid
- id: literal
  doc: print raw entry names (don't treat e.g. control characters specially)
  type: boolean
  inputBinding:
    prefix: --literal
- id: o
  doc: like -l, but do not list group information
  type: boolean
  inputBinding:
    prefix: -o
- id: indicator_style
  doc: append / indicator to directories
  type: string
  inputBinding:
    prefix: --indicator-style
- id: hide_control_chars
  doc: print ? instead of nongraphic characters
  type: boolean
  inputBinding:
    prefix: --hide-control-chars
- id: show_control_chars
  doc: show nongraphic characters as-is (the default, unless program is 'ls' and output
    is a terminal)
  type: boolean
  inputBinding:
    prefix: --show-control-chars
- id: quote_name
  doc: enclose entry names in double quotes
  type: boolean
  inputBinding:
    prefix: --quote-name
- id: quoting_style
  doc: 'use quoting style WORD for entry names: literal, locale, shell, shell-always,
    shell-escape, shell-escape-always, c, escape'
  type: string
  inputBinding:
    prefix: --quoting-style
- id: reverse
  doc: reverse order while sorting
  type: boolean
  inputBinding:
    prefix: --reverse
- id: recursive
  doc: list subdirectories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: size
  doc: print the allocated size of each file, in blocks
  type: boolean
  inputBinding:
    prefix: --size
- id: s
  doc: sort by file size, largest first
  type: boolean
  inputBinding:
    prefix: -S
- id: sort
  doc: 'sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v),
    extension (-X)'
  type: string
  inputBinding:
    prefix: --sort
- id: time
  doc: 'with -l, show time as WORD instead of default modification time: atime or
    access or use (-u); ctime or status (-c); also use specified time as sort key
    if --sort=time (newest first)'
  type: string
  inputBinding:
    prefix: --time
- id: time_style
  doc: "with -l, show times using style STYLE: full-iso, long-iso, iso, locale, or\
    \ +FORMAT; FORMAT is interpreted like in 'date'; if FORMAT is FORMAT1<newline>FORMAT2,\
    \ then FORMAT1 applies to non-recent files and FORMAT2 to recent files; if STYLE\
    \ is prefixed with 'posix-', STYLE takes effect only outside the POSIX locale"
  type: string
  inputBinding:
    prefix: --time-style
- id: t
  doc: sort by modification time, newest first
  type: boolean
  inputBinding:
    prefix: -t
- id: tab_size
  doc: assume tab stops at each COLS instead of 8
  type: string
  inputBinding:
    prefix: --tabsize
- id: u
  doc: 'with -lt: sort by, and show, access time; with -l: show access time and sort
    by name; otherwise: sort by access time, newest first'
  type: boolean
  inputBinding:
    prefix: -u
- id: u
  doc: do not sort; list entries in directory order
  type: boolean
  inputBinding:
    prefix: -U
- id: v
  doc: natural sort of (version) numbers within text
  type: boolean
  inputBinding:
    prefix: -v
- id: width
  doc: set output width to COLS.  0 means no limit
  type: string
  inputBinding:
    prefix: --width
- id: x
  doc: list entries by lines instead of by columns
  type: boolean
  inputBinding:
    prefix: -x
- id: x
  doc: sort alphabetically by entry extension
  type: boolean
  inputBinding:
    prefix: -X
- id: context
  doc: print any security context of each file
  type: boolean
  inputBinding:
    prefix: --context
outputs: []
cwlVersion: v1.1
baseCommand:
- ls

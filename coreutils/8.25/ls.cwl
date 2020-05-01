#!/usr/bin/env cwl-runner

baseCommand:
- ls
class: CommandLineTool
cwlVersion: v1.0
id: ls
inputs:
- doc: with -l, print the author of each file
  id: author
  inputBinding:
    prefix: --author
  type: boolean
- doc: print C-style escapes for nongraphic characters
  id: escape
  inputBinding:
    prefix: --escape
  type: boolean
- doc: scale sizes by SIZE before printing them; e.g., '--block-size=M' prints sizes
    in units of 1,048,576 bytes; see SIZE format below
  id: block_size
  inputBinding:
    prefix: --block-size
  type: long
- doc: do not list implied entries ending with ~
  id: ignore_backups
  inputBinding:
    prefix: --ignore-backups
  type: boolean
- doc: 'with -lt: sort by, and show, ctime (time of last modification of file status
    information); with -l: show ctime and sort by name; otherwise: sort by ctime,
    newest first'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: list entries by columns
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: "[=WHEN]         colorize the output; WHEN can be 'always' (default if omitted),\
    \ 'auto', or 'never'; more info below"
  id: color
  inputBinding:
    prefix: --color
  type: boolean
- doc: list directories themselves, not their contents
  id: directory
  inputBinding:
    prefix: --directory
  type: boolean
- doc: generate output designed for Emacs' dired mode
  id: dired
  inputBinding:
    prefix: --dired
  type: boolean
- doc: do not sort, enable -aU, disable -ls --color
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: append indicator (one of */=>@|) to entries
  id: classify
  inputBinding:
    prefix: --classify
  type: boolean
- doc: likewise, except do not append '*'
  id: file_type
  inputBinding:
    prefix: --file-type
  type: boolean
- doc: across -x, commas -m, horizontal -x, long -l, single-column -1, verbose -l,
    vertical -C
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: like -l --time-style=full-iso
  id: full_time
  inputBinding:
    prefix: --full-time
  type: boolean
- doc: like -l, but do not list owner
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: group directories before files; can be augmented with a --sort option, but
    any use of --sort=none (-U) disables grouping
  id: group_directories_first
  inputBinding:
    prefix: --group-directories-first
  type: boolean
- doc: in a long listing, don't print group names
  id: no_group
  inputBinding:
    prefix: --no-group
  type: boolean
- doc: likewise, but use powers of 1000 not 1024
  id: si
  inputBinding:
    prefix: --si
  type: boolean
- doc: follow symbolic links listed on the command line
  id: dereference_command_line
  inputBinding:
    prefix: --dereference-command-line
  type: boolean
- doc: follow each command line symbolic link that points to a directory
  id: dereference_command_line_symlink_to_dir
  inputBinding:
    prefix: --dereference-command-line-symlink-to-dir
  type: boolean
- doc: do not list implied entries matching shell PATTERN (overridden by -a or -A)
  id: hide
  inputBinding:
    prefix: --hide
  type: string
- doc: 'append indicator with style WORD to entry names: none (default), slash (-p),
    file-type (--file-type), classify (-F)'
  id: indicator_style
  inputBinding:
    prefix: --indicator-style
  type: string
- doc: print the index number of each file
  id: inode
  inputBinding:
    prefix: --inode
  type: boolean
- doc: do not list implied entries matching shell PATTERN
  id: ignore
  inputBinding:
    prefix: --ignore
  type: string
- doc: default to 1024-byte blocks for disk usage
  id: kib_i_bytes
  inputBinding:
    prefix: --kibibytes
  type: boolean
- doc: a long listing format
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: showing file information for a symbolic link, show information for the file
    the link references rather than for the link itself
  id: dereference
  inputBinding:
    prefix: --dereference
  type: string
- doc: width with a comma separated list of entries
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: like -l, but list numeric user and group IDs
  id: numeric_uid_gid
  inputBinding:
    prefix: --numeric-uid-gid
  type: boolean
- doc: print raw entry names (don't treat e.g. control characters specially)
  id: literal
  inputBinding:
    prefix: --literal
  type: boolean
- doc: like -l, but do not list group information
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: append / indicator to directories
  id: indicator_style
  inputBinding:
    prefix: --indicator-style
  type: string
- doc: print ? instead of nongraphic characters
  id: hide_control_chars
  inputBinding:
    prefix: --hide-control-chars
  type: boolean
- doc: show nongraphic characters as-is (the default, unless program is 'ls' and output
    is a terminal)
  id: show_control_chars
  inputBinding:
    prefix: --show-control-chars
  type: boolean
- doc: enclose entry names in double quotes
  id: quote_name
  inputBinding:
    prefix: --quote-name
  type: boolean
- doc: 'use quoting style WORD for entry names: literal, locale, shell, shell-always,
    shell-escape, shell-escape-always, c, escape'
  id: quoting_style
  inputBinding:
    prefix: --quoting-style
  type: string
- doc: reverse order while sorting
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: list subdirectories recursively
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: print the allocated size of each file, in blocks
  id: size
  inputBinding:
    prefix: --size
  type: boolean
- doc: sort by file size, largest first
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: 'sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v),
    extension (-X)'
  id: sort
  inputBinding:
    prefix: --sort
  type: string
- doc: 'with -l, show time as WORD instead of default modification time: atime or
    access or use (-u); ctime or status (-c); also use specified time as sort key
    if --sort=time (newest first)'
  id: time
  inputBinding:
    prefix: --time
  type: string
- doc: "with -l, show times using style STYLE: full-iso, long-iso, iso, locale, or\
    \ +FORMAT; FORMAT is interpreted like in 'date'; if FORMAT is FORMAT1<newline>FORMAT2,\
    \ then FORMAT1 applies to non-recent files and FORMAT2 to recent files; if STYLE\
    \ is prefixed with 'posix-', STYLE takes effect only outside the POSIX locale"
  id: time_style
  inputBinding:
    prefix: --time-style
  type: string
- doc: sort by modification time, newest first
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: assume tab stops at each COLS instead of 8
  id: tab_size
  inputBinding:
    prefix: --tabsize
  type: string
- doc: 'with -lt: sort by, and show, access time; with -l: show access time and sort
    by name; otherwise: sort by access time, newest first'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: do not sort; list entries in directory order
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: natural sort of (version) numbers within text
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: set output width to COLS.  0 means no limit
  id: width
  inputBinding:
    prefix: --width
  type: string
- doc: list entries by lines instead of by columns
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: sort alphabetically by entry extension
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: print any security context of each file
  id: context
  inputBinding:
    prefix: --context
  type: boolean

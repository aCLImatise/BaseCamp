version 1.0

task Dir {
  input {
    Boolean? all
    Boolean? almost_all
    Boolean? author
    Boolean? escape
    Int? block_size
    Boolean? ignore_backups
    Boolean? lt_sort_ctime
    Boolean? list_entries_columns
    Boolean? color
    Boolean? directory
    Boolean? dired
    Boolean? sort_enable_au
    Boolean? classify
    Boolean? file_type
    Int? format
    Boolean? full_time
    Boolean? l_list_owner
    Boolean? group_directories_first
    Boolean? no_group
    Boolean? si
    Boolean? dereference_command_line
    Boolean? dereference_command_line_symlink_to_dir
    String? hide
    Boolean? hyperlink
    String? indicator_style
    Boolean? inode
    String? ignore
    Boolean? kib_i_bytes
    Boolean? use_long_format
    Boolean? dereference
    Boolean? fill_width_comma
    Boolean? numeric_uid_gid
    Boolean? literal
    Boolean? l_list_group
    Boolean? hide_control_chars
    Boolean? show_control_chars
    Boolean? quote_name
    String? quoting_style
    Boolean? reverse
    Boolean? recursive
    Boolean? size
    Boolean? sort_file_size
    Int? sort
    String? time
    String? time_style
    Boolean? sort_modification_time
    Int? tab_size
    Boolean? lt_sort_access
    Boolean? sort_list_entries
    Boolean? natural_sort_version
    Int? width
    Boolean? list_entries_lines
    Boolean? sort_alphabetically_entry
    Boolean? context
    Boolean? list_one_file
  }
  command <<<
    dir \
      ~{if (all) then "--all" else ""} \
      ~{if (almost_all) then "--almost-all" else ""} \
      ~{if (author) then "--author" else ""} \
      ~{if (escape) then "--escape" else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if (ignore_backups) then "--ignore-backups" else ""} \
      ~{if (lt_sort_ctime) then "-c" else ""} \
      ~{if (list_entries_columns) then "-C" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (dired) then "--dired" else ""} \
      ~{if (sort_enable_au) then "-f" else ""} \
      ~{if (classify) then "--classify" else ""} \
      ~{if (file_type) then "--file-type" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (full_time) then "--full-time" else ""} \
      ~{if (l_list_owner) then "-g" else ""} \
      ~{if (group_directories_first) then "--group-directories-first" else ""} \
      ~{if (no_group) then "--no-group" else ""} \
      ~{if (si) then "--si" else ""} \
      ~{if (dereference_command_line) then "--dereference-command-line" else ""} \
      ~{if (dereference_command_line_symlink_to_dir) then "--dereference-command-line-symlink-to-dir" else ""} \
      ~{if defined(hide) then ("--hide " +  '"' + hide + '"') else ""} \
      ~{if (hyperlink) then "--hyperlink" else ""} \
      ~{if defined(indicator_style) then ("--indicator-style " +  '"' + indicator_style + '"') else ""} \
      ~{if (inode) then "--inode" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (kib_i_bytes) then "--kibibytes" else ""} \
      ~{if (use_long_format) then "-l" else ""} \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if (fill_width_comma) then "-m" else ""} \
      ~{if (numeric_uid_gid) then "--numeric-uid-gid" else ""} \
      ~{if (literal) then "--literal" else ""} \
      ~{if (l_list_group) then "-o" else ""} \
      ~{if (hide_control_chars) then "--hide-control-chars" else ""} \
      ~{if (show_control_chars) then "--show-control-chars" else ""} \
      ~{if (quote_name) then "--quote-name" else ""} \
      ~{if defined(quoting_style) then ("--quoting-style " +  '"' + quoting_style + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (size) then "--size" else ""} \
      ~{if (sort_file_size) then "-S" else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(time_style) then ("--time-style " +  '"' + time_style + '"') else ""} \
      ~{if (sort_modification_time) then "-t" else ""} \
      ~{if defined(tab_size) then ("--tabsize " +  '"' + tab_size + '"') else ""} \
      ~{if (lt_sort_access) then "-u" else ""} \
      ~{if (sort_list_entries) then "-U" else ""} \
      ~{if (natural_sort_version) then "-v" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (list_entries_lines) then "-x" else ""} \
      ~{if (sort_alphabetically_entry) then "-X" else ""} \
      ~{if (context) then "--context" else ""} \
      ~{if (list_one_file) then "-1" else ""}
  >>>
  parameter_meta {
    all: "do not ignore entries starting with ."
    almost_all: "do not list implied . and .."
    author: "with -l, print the author of each file"
    escape: "print C-style escapes for nongraphic characters"
    block_size: "with -l, scale sizes by SIZE when printing them;\\ne.g., '--block-size=M'; see SIZE format below"
    ignore_backups: "do not list implied entries ending with ~"
    lt_sort_ctime: "with -lt: sort by, and show, ctime (time of last\\nmodification of file status information);\\nwith -l: show ctime and sort by name;\\notherwise: sort by ctime, newest first"
    list_entries_columns: "list entries by columns"
    color: "[=WHEN]         colorize the output; WHEN can be 'always' (default\\nif omitted), 'auto', or 'never'; more info below"
    directory: "list directories themselves, not their contents"
    dired: "generate output designed for Emacs' dired mode"
    sort_enable_au: "do not sort, enable -aU, disable -ls --color"
    classify: "append indicator (one of */=>@|) to entries"
    file_type: "likewise, except do not append '*'"
    format: "across -x, commas -m, horizontal -x, long -l,\\nsingle-column -1, verbose -l, vertical -C"
    full_time: "like -l --time-style=full-iso"
    l_list_owner: "like -l, but do not list owner"
    group_directories_first: "group directories before files;\\ncan be augmented with a --sort option, but any\\nuse of --sort=none (-U) disables grouping"
    no_group: "in a long listing, don't print group names"
    si: "likewise, but use powers of 1000 not 1024"
    dereference_command_line: "follow symbolic links listed on the command line"
    dereference_command_line_symlink_to_dir: "follow each command line symbolic link\\nthat points to a directory"
    hide: "do not list implied entries matching shell PATTERN\\n(overridden by -a or -A)"
    hyperlink: "[=WHEN]     hyperlink file names; WHEN can be 'always'\\n(default if omitted), 'auto', or 'never'"
    indicator_style: "append / indicator to directories"
    inode: "print the index number of each file"
    ignore: "do not list implied entries matching shell PATTERN"
    kib_i_bytes: "default to 1024-byte blocks for disk usage;\\nused only with -s and per directory totals"
    use_long_format: "use a long listing format"
    dereference: "when showing file information for a symbolic\\nlink, show information for the file the link\\nreferences rather than for the link itself"
    fill_width_comma: "fill width with a comma separated list of entries"
    numeric_uid_gid: "like -l, but list numeric user and group IDs"
    literal: "print entry names without quoting"
    l_list_group: "like -l, but do not list group information"
    hide_control_chars: "print ? instead of nongraphic characters"
    show_control_chars: "show nongraphic characters as-is (the default,\\nunless program is 'ls' and output is a terminal)"
    quote_name: "enclose entry names in double quotes"
    quoting_style: "use quoting style WORD for entry names:\\nliteral, locale, shell, shell-always,\\nshell-escape, shell-escape-always, c, escape\\n(overrides QUOTING_STYLE environment variable)"
    reverse: "reverse order while sorting"
    recursive: "list subdirectories recursively"
    size: "print the allocated size of each file, in blocks"
    sort_file_size: "sort by file size, largest first"
    sort: "sort by WORD instead of name: none (-U), size (-S),\\ntime (-t), version (-v), extension (-X)"
    time: "with -l, show time as WORD instead of default\\nmodification time: atime or access or use (-u);\\nctime or status (-c); also use specified time\\nas sort key if --sort=time (newest first)"
    time_style: "time/date format with -l; see TIME_STYLE below"
    sort_modification_time: "sort by modification time, newest first"
    tab_size: "assume tab stops at each COLS instead of 8"
    lt_sort_access: "with -lt: sort by, and show, access time;\\nwith -l: show access time and sort by name;\\notherwise: sort by access time, newest first"
    sort_list_entries: "do not sort; list entries in directory order"
    natural_sort_version: "natural sort of (version) numbers within text"
    width: "set output width to COLS.  0 means no limit"
    list_entries_lines: "list entries by lines instead of by columns"
    sort_alphabetically_entry: "sort alphabetically by entry extension"
    context: "print any security context of each file"
    list_one_file: "list one file per line.  Avoid '\\n' with -q or -b"
  }
  output {
    File out_stdout = stdout()
  }
}
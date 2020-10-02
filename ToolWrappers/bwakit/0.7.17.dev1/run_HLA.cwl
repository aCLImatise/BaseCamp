class: CommandLineTool
id: run_HLA.cwl
inputs:
- id: in_do_create_files
  doc: Don't create files
  type: boolean
  inputBinding:
    prefix: -c
- id: in_d
  doc: Date/time to use
  type: string
  inputBinding:
    prefix: -d
- id: in_t
  doc: Date/time to use
  type: string
  inputBinding:
    prefix: -t
- id: in_use_files_datetime
  doc: Use FILE's date/time
  type: File
  inputBinding:
    prefix: -r
- id: in_one_column_output
  doc: One column output
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_include_entries_start
  doc: Include entries which start with .
  type: boolean
  inputBinding:
    prefix: -a
- id: in_like_a_exclude
  doc: Like -a, but exclude . and ..
  type: boolean
  inputBinding:
    prefix: -A
- id: in_list_by_columns
  doc: List by columns
  type: boolean
  inputBinding:
    prefix: -C
- id: in_list_by_lines
  doc: List by lines
  type: boolean
  inputBinding:
    prefix: -x
- id: in_follow_symlinks
  doc: Follow symlinks
  type: boolean
  inputBinding:
    prefix: -L
- id: in_follow_symlinks_command
  doc: Follow symlinks on command line
  type: boolean
  inputBinding:
    prefix: -H
- id: in_recurse
  doc: Recurse
  type: boolean
  inputBinding:
    prefix: -R
- id: in_append_dir_entries
  doc: Append / to dir entries
  type: boolean
  inputBinding:
    prefix: -p
- id: in_append_indicator_one
  doc: Append indicator (one of */=@|) to entries
  type: boolean
  inputBinding:
    prefix: -F
- id: in_long_listing_format
  doc: Long listing format
  type: boolean
  inputBinding:
    prefix: -l
- id: in_list_inode_numbers
  doc: List inode numbers
  type: boolean
  inputBinding:
    prefix: -i
- id: in_list_numeric_uids
  doc: List numeric UIDs and GIDs instead of names
  type: boolean
  inputBinding:
    prefix: -n
- id: in_list_allocated_blocks
  doc: List allocated blocks
  type: boolean
  inputBinding:
    prefix: -s
- id: in_list_full_date
  doc: List full date and time
  type: boolean
  inputBinding:
    prefix: -e
- id: in_sort_by_size
  doc: Sort by size
  type: boolean
  inputBinding:
    prefix: -S
- id: in_sort_by_extension
  doc: Sort by extension
  type: boolean
  inputBinding:
    prefix: -X
- id: in_sort_by_version
  doc: Sort by version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_l_sort_by
  doc: 'With -l: sort by atime'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_assume_terminal_n
  doc: Assume the terminal is N columns wide
  type: string
  inputBinding:
    prefix: -w
- id: in_color
  doc: '[={always,never,auto}]   Control coloring'
  type: boolean
  inputBinding:
    prefix: --color
- id: in_one_aacxdlhrfplinsehrsxvctu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -1AaCxdLHRFplinsehrSXvctu
- id: in_ls
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_touch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-HLA

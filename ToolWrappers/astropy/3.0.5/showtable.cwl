class: CommandLineTool
id: showtable.cwl
inputs:
- id: in_format
  doc: "input table format, should be specified if it cannot\nbe automatically detected"
  type: string?
  inputBinding:
    prefix: --format
- id: in_more
  doc: use the pager mode from Table.more
  type: boolean?
  inputBinding:
    prefix: --more
- id: in_info
  doc: show information about the table columns
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_stats
  doc: show statistics about the table columns
  type: boolean?
  inputBinding:
    prefix: --stats
- id: in_max_lines
  doc: "maximum number of lines in table output\n(default=screen length, -1 for no\
    \ limit)"
  type: long?
  inputBinding:
    prefix: --max-lines
- id: in_max_width
  doc: "maximum width in table output (default=screen width,\n-1 for no limit)"
  type: long?
  inputBinding:
    prefix: --max-width
- id: in_hide_unit
  doc: "hide the header row for unit (which is shown only if\none or more columns\
    \ has a unit)"
  type: boolean?
  inputBinding:
    prefix: --hide-unit
- id: in_show_d_type
  doc: include a header row for column dtypes
  type: boolean?
  inputBinding:
    prefix: --show-dtype
- id: in_delimiter
  doc: column delimiter string
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_hdu
  doc: name of the HDU to show
  type: string?
  inputBinding:
    prefix: --hdu
- id: in_path
  doc: the path from which to read the table
  type: File?
  inputBinding:
    prefix: --path
- id: in_table_id
  doc: the table to read in
  type: string?
  inputBinding:
    prefix: --table-id
- id: in_filename
  doc: path to one or more files
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- showtable

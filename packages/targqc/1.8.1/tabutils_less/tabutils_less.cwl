class: CommandLineTool
id: tabutils_less.cwl
inputs:
- id: in_quit_end_reached
  doc: Quit once the end of a file is reached
  type: boolean
  inputBinding:
    prefix: -E
- id: in_display_status_line
  doc: "Display status line with line numbers\nand percentage through the file"
  type: boolean
  inputBinding:
    prefix: -M
- id: in_prefix_line_number
  doc: Prefix line number to each line
  type: boolean
  inputBinding:
    prefix: -N
- id: in_ignore_case_searches
  doc: Ignore case in all searches
  type: boolean
  inputBinding:
    prefix: -I
- id: in_less
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tabutils
- less

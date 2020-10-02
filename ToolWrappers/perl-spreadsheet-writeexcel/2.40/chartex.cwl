class: CommandLineTool
id: chartex.cwl
inputs:
- id: in_man
  doc: "Prints the manual page and exits.\n"
  type: string
  inputBinding:
    prefix: --man
- id: in_chart_name
  doc: ''
  type: boolean
  inputBinding:
    prefix: --chartname
- id: in_file_dot_xls
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chartex

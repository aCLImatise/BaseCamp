class: CommandLineTool
id: tabutils_filter.cwl
inputs:
- id: in_header
  doc: ''
  type: File
  inputBinding:
    prefix: -header
- id: in_tab_filter_do_tpy
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
- filter

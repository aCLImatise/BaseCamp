class: CommandLineTool
id: nw_rename.cwl
inputs:
- id: in_hl
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hl
- id: in_filename_vertical_line
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_map_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_rename

class: CommandLineTool
id: nw_duration.cwl
inputs:
- id: in_bh_il
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -bhIL
- id: in_filename_vertical_line
  doc: ''
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
- nw_duration

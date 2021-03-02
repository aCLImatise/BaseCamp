class: CommandLineTool
id: mktime.cwl
inputs:
- id: in_yyyy_mm_dd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hh
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mktime

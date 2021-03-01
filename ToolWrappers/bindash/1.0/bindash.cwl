class: CommandLineTool
id: bindash.cwl
inputs:
- id: in_com_mm_and
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bindash

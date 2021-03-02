class: CommandLineTool
id: rfheader.cwl
inputs:
- id: in_refine
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_header
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rfheader

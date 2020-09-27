class: CommandLineTool
id: lyner_read.cwl
inputs:
- id: in_matrix
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
- lyner
- read

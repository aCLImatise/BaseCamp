class: CommandLineTool
id: DBdust.cwl
inputs:
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DBdust

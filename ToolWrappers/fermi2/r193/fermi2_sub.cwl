class: CommandLineTool
id: fermi2_sub.cwl
inputs:
- id: in_cs
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi2
- sub

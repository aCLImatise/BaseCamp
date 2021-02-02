class: CommandLineTool
id: medaka_features..cwl
inputs:
- id: in_medaka
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
- medaka
- features.

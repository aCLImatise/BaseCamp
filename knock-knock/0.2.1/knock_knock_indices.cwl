class: CommandLineTool
id: ../../../knock_knock_indices.cwl
inputs:
- id: in_knock_knock
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
- knock-knock
- indices

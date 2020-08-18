class: CommandLineTool
id: ../../../fastaptamer_count.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fastaptamer_count

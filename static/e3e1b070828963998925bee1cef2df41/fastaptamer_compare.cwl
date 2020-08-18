class: CommandLineTool
id: ../../../fastaptamer_compare.cwl
inputs:
- id: x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: ''
  type: string
  inputBinding:
    prefix: -y
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- fastaptamer_compare

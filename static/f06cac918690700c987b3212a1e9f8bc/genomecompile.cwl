class: CommandLineTool
id: genomecompile.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- genomecompile

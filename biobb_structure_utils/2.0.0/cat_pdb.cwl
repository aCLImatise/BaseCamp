class: CommandLineTool
id: cat_pdb.cwl
inputs:
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: system
  doc: ''
  type: string
  inputBinding:
    prefix: --system
- id: step
  doc: ''
  type: string
  inputBinding:
    prefix: --step
- id: i1
  doc: ''
  type: string
  inputBinding:
    prefix: -i1
- id: i2
  doc: ''
  type: string
  inputBinding:
    prefix: -i2
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- cat_pdb

class: CommandLineTool
id: fastx_uncollapser.cwl
inputs:
- id: fast_a_un_collapse_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
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
- fastx_uncollapser

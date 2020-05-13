class: CommandLineTool
id: prune_input.cwl
inputs:
- id: d
  doc: ''
  type: long
  inputBinding:
    prefix: -d
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- prune
- input

class: CommandLineTool
id: svtools_prune.cwl
inputs:
- id: prune
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- svtools
- prune

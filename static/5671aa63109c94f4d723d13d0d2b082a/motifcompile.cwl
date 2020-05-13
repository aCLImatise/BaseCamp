class: CommandLineTool
id: motifcompile.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- motifcompile

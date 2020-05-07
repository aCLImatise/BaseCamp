class: CommandLineTool
id: piler.cwl
inputs:
- id: trs
  doc: ''
  type: string
  inputBinding:
    prefix: -trs
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: -out
outputs: []
cwlVersion: v1.1
baseCommand:
- piler

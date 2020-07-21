class: CommandLineTool
id: ../../../getFRCvalues.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: assembler
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getFRCvalues

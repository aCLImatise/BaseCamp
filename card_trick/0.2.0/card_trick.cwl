class: CommandLineTool
id: ../../../card_trick.cwl
inputs:
- id: man
  doc: Additional information
  type: boolean
  inputBinding:
    prefix: --man
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- card-trick

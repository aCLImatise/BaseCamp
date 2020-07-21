class: CommandLineTool
id: ../../../card_trick_update.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: man
  doc: ''
  type: boolean
  inputBinding:
    prefix: --man
- id: card_trick
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- card-trick
- update

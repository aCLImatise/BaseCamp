class: CommandLineTool
id: card_trick.cwl
inputs:
- id: man
  doc: Additional information
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- card-trick

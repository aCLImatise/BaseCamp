class: CommandLineTool
id: card_trick_update.cwl
inputs:
- id: path
  doc: Path to store CARD ontology.
  type: File
  inputBinding:
    prefix: --path
- id: quiet
  doc: Do not print process information
  type: string
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- card-trick
- update

class: CommandLineTool
id: secapr_add_missing_sequences.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- secapr
- add_missing_sequences

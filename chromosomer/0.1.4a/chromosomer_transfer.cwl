class: CommandLineTool
id: chromosomer_transfer.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- transfer

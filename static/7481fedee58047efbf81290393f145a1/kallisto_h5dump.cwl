class: CommandLineTool
id: ../../../kallisto_h5dump.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: abundance_doth_five
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- h5dump

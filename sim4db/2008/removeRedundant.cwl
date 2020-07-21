class: CommandLineTool
id: ../../../removeRedundant.cwl
inputs:
- id: gff_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
- id: polishes_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- removeRedundant

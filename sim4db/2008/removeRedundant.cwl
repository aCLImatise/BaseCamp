class: CommandLineTool
id: removeRedundant.cwl
inputs:
- id: polishes_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff3
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- removeRedundant

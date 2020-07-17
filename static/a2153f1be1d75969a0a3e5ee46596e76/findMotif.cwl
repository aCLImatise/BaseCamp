class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/findMotif.cwl
inputs:
- id: verbose
  doc: '- will display gaps as bed file data lines to stderr'
  type: string
  inputBinding:
    prefix: -verbose
- id: motif
  doc: ''
  type: string
  inputBinding:
    prefix: -motif
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- findMotif

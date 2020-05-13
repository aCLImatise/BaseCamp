class: CommandLineTool
id: findMotif.cwl
inputs:
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: =4 - will display gaps as bed file data lines to stderr
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- findMotif

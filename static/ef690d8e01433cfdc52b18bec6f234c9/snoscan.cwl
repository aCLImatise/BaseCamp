class: CommandLineTool
id: snoscan.cwl
inputs:
- id: rrna_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- snoscan

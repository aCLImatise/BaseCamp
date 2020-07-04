class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snoscan.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
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
outputs: []
cwlVersion: v1.1
baseCommand:
- snoscan

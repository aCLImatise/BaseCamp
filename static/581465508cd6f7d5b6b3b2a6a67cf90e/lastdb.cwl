class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lastdb.cwl
inputs:
- id: output_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lastdb

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fpa_index_SUBCOMMAND.cwl
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
- id: fpa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- index
- SUBCOMMAND

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/interop_aggregate.cwl
inputs:
- id: max_tile
  doc: '[0]: Maximum tile number to include'
  type: boolean
  inputBinding:
    prefix: --max-tile
- id: option_one
  doc: ''
  type: string
  inputBinding:
    prefix: --option1
- id: option_two
  doc: ''
  type: string
  inputBinding:
    prefix: --option2
- id: run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_aggregate

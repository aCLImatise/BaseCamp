class: CommandLineTool
id: ../../../bl_randomize.cwl
inputs:
- id: specify_multiple_input_files
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_multiple_output_files
  doc: specify multiple OUTPUT files
  type: boolean
  inputBinding:
    prefix: -o
- id: use_order_readorder
  doc: use the order in READ-ORDER instead of a random order
  type: boolean
  inputBinding:
    prefix: -r
- id: write_random_order
  doc: write the random order to WRITE-ORDER
  type: boolean
  inputBinding:
    prefix: -w
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-randomize

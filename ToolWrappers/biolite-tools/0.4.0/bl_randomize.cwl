class: CommandLineTool
id: bl_randomize.cwl
inputs:
- id: in_specify_multiple_input_files
  doc: specify multiple INPUT files
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_multiple_output_files
  doc: specify multiple OUTPUT files
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_use_order_order
  doc: use the order in READ-ORDER instead of a random order
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_write_random_order
  doc: write the random order to WRITE-ORDER
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_randomize
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bl-randomize

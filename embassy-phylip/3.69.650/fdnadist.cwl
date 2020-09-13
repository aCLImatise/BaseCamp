class: CommandLineTool
id: ../../../fdnadist.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_lower
  doc: boolean    [N] Output as a lower triangular distance
  type: boolean
  inputBinding:
    prefix: -lower
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fdnadist

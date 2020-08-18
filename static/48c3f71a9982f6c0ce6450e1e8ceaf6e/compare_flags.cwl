class: CommandLineTool
id: ../../../compare_flags.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output file (Cross tab format).
  type: string
  inputBinding:
    prefix: --output
- id: flag_one
  doc: Flag 1 to create cross tab
  type: string
  inputBinding:
    prefix: --flag1
- id: flag_two
  doc: Flag 2 to create cross tab
  type: string
  inputBinding:
    prefix: --flag2
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_flags.py

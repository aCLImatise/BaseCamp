class: CommandLineTool
id: ../../../wiggle_to_binned_array.py.cwl
inputs:
- id: comp
  doc: compression type (none, zlib, lzo)
  type: string
  inputBinding:
    prefix: --comp
- id: score_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- wiggle_to_binned_array.py

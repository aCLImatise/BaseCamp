class: CommandLineTool
id: wiggle_to_binned_array.py.cwl
inputs:
- id: comp
  doc: ': compression type (none, zlib, lzo)'
  type: string
  inputBinding:
    prefix: --comp
outputs: []
cwlVersion: v1.1
baseCommand:
- wiggle_to_binned_array.py

class: CommandLineTool
id: ../../../calculate_distances.py.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_distances.py

class: CommandLineTool
id: ../../../graph_simplification.py.cwl
inputs:
- id: length_minimal_suffix
  doc: Length of minimal suffix for node merging
  type: string
  inputBinding:
    prefix: -l
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- graph_simplification.py

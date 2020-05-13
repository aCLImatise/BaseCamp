class: CommandLineTool
id: graph_simplification.py.cwl
inputs:
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
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- graph_simplification.py

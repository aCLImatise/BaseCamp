class: CommandLineTool
id: poppunk_extract_distances.py.cwl
inputs:
- id: extract_distances
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: distances
  doc: ''
  type: string
  inputBinding:
    prefix: --distances
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_extract_distances.py

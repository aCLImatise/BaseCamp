class: CommandLineTool
id: poppunk_extract_components.py.cwl
inputs:
- id: extract_components
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_extract_components.py

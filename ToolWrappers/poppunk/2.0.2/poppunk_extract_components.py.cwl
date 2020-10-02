class: CommandLineTool
id: poppunk_extract_components.py.cwl
inputs:
- id: in_extract_components
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poppunk_extract_components.py

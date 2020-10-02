class: CommandLineTool
id: PATHOGIST_visualize_format.cwl
inputs:
- id: in_pathog_ist
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_visualize
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
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
- PATHOGIST
- visualize
- format

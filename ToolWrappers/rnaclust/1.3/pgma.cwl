class: CommandLineTool
id: pgma.cwl
inputs:
- id: in_names
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_distances
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pgma

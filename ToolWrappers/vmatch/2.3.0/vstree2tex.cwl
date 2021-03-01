class: CommandLineTool
id: vstree2tex.cwl
inputs:
- id: in_index_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vstree2tex

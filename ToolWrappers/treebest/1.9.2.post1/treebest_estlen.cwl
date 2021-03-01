class: CommandLineTool
id: treebest_estlen.cwl
inputs:
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tag
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treebest
- estlen

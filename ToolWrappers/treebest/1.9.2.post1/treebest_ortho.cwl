class: CommandLineTool
id: treebest_ortho.cwl
inputs:
- id: in_tree
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
- treebest
- ortho

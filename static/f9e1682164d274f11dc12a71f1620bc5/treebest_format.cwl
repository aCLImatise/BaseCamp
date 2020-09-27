class: CommandLineTool
id: treebest_format.cwl
inputs:
- id: in_one
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- format

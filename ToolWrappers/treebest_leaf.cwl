class: CommandLineTool
id: treebest_leaf.cwl
inputs:
- id: in_nh_tree
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
- leaf

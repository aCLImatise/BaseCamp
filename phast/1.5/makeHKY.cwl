class: CommandLineTool
id: makeHKY.cwl
inputs:
- id: branch_length
  doc: Assume a tree consisting of a single branch of specified length. Default value
    is 1.
  type: string
  inputBinding:
    prefix: --branch-length
- id: tree
  doc: Override --branch-length and use specified tree.
  type: string
  inputBinding:
    prefix: --tree
outputs: []
cwlVersion: v1.1
baseCommand:
- makeHKY

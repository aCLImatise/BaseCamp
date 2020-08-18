class: CommandLineTool
id: ../../../halUpdateBranchLengths.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: newick_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halUpdateBranchLengths

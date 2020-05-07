class: CommandLineTool
id: treebest_sortleaf.cwl
inputs:
- id: tree1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- sortleaf

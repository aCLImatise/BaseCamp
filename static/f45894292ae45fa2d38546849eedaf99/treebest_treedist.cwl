class: CommandLineTool
id: ../../../treebest_treedist.cwl
inputs:
- id: tree_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- treedist

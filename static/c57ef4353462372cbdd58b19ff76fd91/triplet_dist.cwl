class: CommandLineTool
id: ../../../triplet_dist.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: filename_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_two
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- triplet_dist

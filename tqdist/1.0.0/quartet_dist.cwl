class: CommandLineTool
id: quartet_dist.cwl
inputs:
- id: filename_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: filename_2
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: the
  doc: of leaves in the trees (should be the same for both).
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of quartets in the two trees (n choose 3).
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: distance between the two trees.
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: quartet distance between the two trees.
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of resolved quartets that agree in the two trees.
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: number of resolved quartets that agree in the two trees.
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of quartets that are unresolved in both trees.
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: number of quartets that are unresolved in both trees.
  type: string
  inputBinding:
    prefix: '- The'
outputs: []
cwlVersion: v1.1
baseCommand:
- quartet_dist

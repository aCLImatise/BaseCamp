class: CommandLineTool
id: ../../../faRandomize.cwl
inputs:
- id: seed
  doc: ''
  type: string
  inputBinding:
    prefix: -seed
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: randomized_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- faRandomize

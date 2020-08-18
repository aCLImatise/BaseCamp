class: CommandLineTool
id: ../../../fisher_exact_pos.cwl
inputs:
- id: fisher_exact
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pos_succ
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pos
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: neg_succ
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: neg
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- fisher_exact
- pos

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fisher_exact_pos_succ.cwl
inputs:
- id: pos
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: neg_succ
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: neg
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fisher_exact
- pos_succ

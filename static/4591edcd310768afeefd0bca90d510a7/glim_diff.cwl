class: CommandLineTool
id: glim_diff.awk_b_pred.cwl
inputs:
- id: a_pred
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_pred
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- glim-diff.awk
- b-pred

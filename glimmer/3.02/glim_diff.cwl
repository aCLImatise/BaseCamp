class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/glim_diff.awk.cwl
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

class: CommandLineTool
id: score_fixed.cwl
inputs:
- id: i
  doc: Negative model is regular ICM, not fixed-length ICM
  type: boolean
  inputBinding:
    prefix: -I
- id: n
  doc: Use NULL negative model, i.e., constant zero
  type: boolean
  inputBinding:
    prefix: -N
- id: s
  doc: Output simple format of string num and 1 or -1
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- score-fixed

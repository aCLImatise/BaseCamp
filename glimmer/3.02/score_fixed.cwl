class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/score_fixed.cwl
inputs:
- id: negative_model_regular
  doc: Negative model is regular ICM, not fixed-length ICM
  type: boolean
  inputBinding:
    prefix: -I
- id: use_null_model
  doc: Use NULL negative model, i.e., constant zero
  type: boolean
  inputBinding:
    prefix: -N
- id: output_simple_format
  doc: Output simple format of string num and 1 or -1
  type: boolean
  inputBinding:
    prefix: -s
- id: pos_model
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: neg_model
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- score-fixed

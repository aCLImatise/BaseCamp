class: CommandLineTool
id: score_fixed.cwl
inputs:
- id: in_negative_model_regular
  doc: Negative model is regular ICM, not fixed-length ICM
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_use_null_model
  doc: Use NULL negative model, i.e., constant zero
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_output_simple_format
  doc: Output simple format of string num and 1 or -1
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_pos_model
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_neg_model
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- score-fixed

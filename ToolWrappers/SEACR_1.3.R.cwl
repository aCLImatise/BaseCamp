class: CommandLineTool
id: SEACR_1.3.R.cwl
inputs:
- id: in_exp
  doc: '- Input AUC values from experiment CUT&RUN'
  type: string
  inputBinding:
    prefix: --exp
- id: in_ctrl
  doc: '- Input AUC values from control CUT&RUN'
  type: string
  inputBinding:
    prefix: --ctrl
- id: in_norm
  doc: =[yes|no]     - Whether to normalize control and experimental files
  type: boolean
  inputBinding:
    prefix: --norm
- id: in_output
  doc: '- Output prefix'
  type: string
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SEACR_1.3.R

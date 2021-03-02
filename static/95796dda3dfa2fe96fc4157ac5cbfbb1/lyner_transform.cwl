class: CommandLineTool
id: lyner_transform.cwl
inputs:
- id: in_log_two_vertical_line_log_one_zero_vertical_line_log_vertical_line_exp_vertical_line_logo_nep_vertical_line_ex_pm_one_vertical_line_transpose
  doc: ''
  type: long?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- transform

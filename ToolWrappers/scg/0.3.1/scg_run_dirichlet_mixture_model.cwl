class: CommandLineTool
id: scg_run_dirichlet_mixture_model.cwl
inputs:
- id: in_seed
  doc: Set random seed so results can be reproduced. By
  type: string
  inputBinding:
    prefix: --seed
- id: in_var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --config_file
- id: in_var_2
  doc: '[--lower_bound_file LOWER_BOUND_FILE]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scg
- run_dirichlet_mixture_model

class: CommandLineTool
id: makmdm.cwl
inputs:
- id: in_suppress_output_average
  doc: ':    Suppress output of average compositions'
  type: boolean
  inputBinding:
    prefix: -c-
- id: in_suppress_output_mdm
  doc: ':    Suppress output of mdm matrix'
  type: boolean
  inputBinding:
    prefix: -m-
- id: in_output_ludecomposited_matrix
  doc: ':     Output LU-decomposited matrix'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_output_power_matrices
  doc: ':     Output power matrices'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__brosum_series
  doc: ':     Brosum series'
  type: boolean
  inputBinding:
    prefix: -b
- id: in__vt_series
  doc: ':     VT series'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_opt_dot_dot_dot
  doc: ''
  type: boolean
  inputBinding:
    prefix: -opt...
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makmdm

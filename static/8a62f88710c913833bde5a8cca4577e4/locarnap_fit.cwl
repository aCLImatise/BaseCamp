class: CommandLineTool
id: ../../../locarnap_fit.cwl
inputs:
- id: in_var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_beta
  doc: "(6)\nInverse temperature"
  type: double
  inputBinding:
    prefix: --beta
- id: in_once_on
  doc: Fit a signal that is on only once
  type: boolean
  inputBinding:
    prefix: --once-on
- id: in_all_values
  doc: Show all function values of signal (instead of only ranges)
  type: boolean
  inputBinding:
    prefix: --all-values
- id: in_penalties
  doc: Input penalty file with sequence of numbers
  type: File
  inputBinding:
    prefix: --penalties
- id: in_ddeltafloat
  doc: -d,--delta=<float>(0.5)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- locarnap_fit

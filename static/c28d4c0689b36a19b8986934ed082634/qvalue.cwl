class: CommandLineTool
id: ../../../qvalue.cwl
inputs:
- id: in_null
  doc: ''
  type: File
  inputBinding:
    prefix: --null
- id: in_good_score
  doc: '|low'
  type: string
  inputBinding:
    prefix: --good-score
- id: in_pi_zero
  doc: ''
  type: boolean
  inputBinding:
    prefix: --pi-zero
- id: in_pi_zero_file
  doc: ''
  type: File
  inputBinding:
    prefix: --pi-zero-file
- id: in_fdr
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fdr
- id: in_bootstraps
  doc: (default=1000)
  type: long
  inputBinding:
    prefix: --bootstraps
- id: in_header
  doc: (default=0)
  type: long
  inputBinding:
    prefix: --header
- id: in_column
  doc: (default=1)
  type: long
  inputBinding:
    prefix: --column
- id: in_append
  doc: ''
  type: boolean
  inputBinding:
    prefix: --append
- id: in_seed
  doc: (default from clock)
  type: long
  inputBinding:
    prefix: --seed
- id: in_verbosity
  doc: '|2|3|4 (default = 2)'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_p_values
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qvalue

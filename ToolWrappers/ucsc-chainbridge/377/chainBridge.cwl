class: CommandLineTool
id: chainBridge.cwl
inputs:
- id: in_max_gap
  doc: "Maximum size of double-sided gap to try to bridge (default: 6000)\nNote: there\
    \ is no size limit for exact sequence matches"
  type: long?
  inputBinding:
    prefix: -maxGap
- id: in_score_scheme
  doc: Read the scoring matrix from a blastz-format file
  type: File?
  inputBinding:
    prefix: -scoreScheme
- id: in_linear_gap
  doc: "Specify type of linearGap to use.\nloose is chicken/human linear gap costs.\n\
    medium is mouse/human linear gap costs.\nOr specify a piecewise linearGap tab\
    \ delimited file.\n(default: loose)\n"
  type: File?
  inputBinding:
    prefix: -linearGap
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 1
- id: in_query_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chainBridge

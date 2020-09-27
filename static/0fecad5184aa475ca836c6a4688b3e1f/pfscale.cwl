class: CommandLineTool
id: pfscale.cwl
inputs:
- id: in_impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_valuelogarithmic_base_parameters
  doc: "<value>:\nlogarithmic base of parameters (default: 10)."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_valueprofile_mode_number
  doc: "<value>:\nprofile mode number to scale."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_valuedatabase_size_default
  doc: "<value>:\ndatabase size (default: 14147368)."
  type: boolean
  inputBinding:
    prefix: -N
- id: in_valueupper_threshold_probability
  doc: "<value>:\nupper threshold of probability range (default: 0.0001)."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_valuelower_threshold_probability
  doc: "<value>:\nlower threshold of probability range (default: 0.000001)."
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_lhl_mn_pq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lhLMNPQ
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pfscale

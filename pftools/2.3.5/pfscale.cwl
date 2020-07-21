class: CommandLineTool
id: ../../../pfscale.cwl
inputs:
- id: impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: value_logarithmic_base
  doc: '<value>: logarithmic base of parameters (default: 10).'
  type: boolean
  inputBinding:
    prefix: -L
- id: value_profile_mode
  doc: '<value>: profile mode number to scale.'
  type: boolean
  inputBinding:
    prefix: -M
- id: value_database_size
  doc: '<value>: database size (default: 14147368).'
  type: boolean
  inputBinding:
    prefix: -N
- id: value_upper_threshold
  doc: '<value>: upper threshold of probability range (default: 0.0001).'
  type: boolean
  inputBinding:
    prefix: -P
- id: value_lower_threshold
  doc: '<value>: lower threshold of probability range (default: 0.000001).'
  type: boolean
  inputBinding:
    prefix: -Q
- id: lhl_mn_pq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lhLMNPQ
outputs: []
cwlVersion: v1.1
baseCommand:
- pfscale
